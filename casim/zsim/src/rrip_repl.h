#ifndef RRIP_REPL_H_
#define RRIP_REPL_H_

#include "repl_policies.h"

#define TRUE                    1
#define FALSE                   0

#define CACHE_HIT               0
#define SEARCHING_FOR_VICTIM    1

#define CLEAR_CACHE_ENTRY       0   // set entry instruction Address to 0 to indicate an invalid PC entry                  
#define CLEAR_RPV               -1  // set Re-reference prediction value to invalid entry

/* From repl_policies.h:
 *
 * Generic replacement policy interface. A replacement policy is initialized by the cache 
 * (by calling setTop/BottomCC) and used by the cache array. Usage follows two models:
 * --> On lookups, update() is called if the replacement policy is to be updated on a hit
 * --> On each replacement, rank() is called with the req and a list of replacement candidates.
 * --> When the replacement is done, replaced() is called. (See below for more detail.)
 */

/* Add DECL_RANK_BINDINGS to each class that implements the new interface,
 * then implement a single, templated rank() function (see below for examples)
 * This way, we achieve a simple, single interface that is specialized transparently
 * to each type of array (this code is performance-critical)
 */


// Static RRIP
class SRRIPReplPolicy : public ReplPolicy {
    protected:
        // add class member variables here
        uint32_t* instruction_array; // Array for the lineID i.e. the instruction in the cache
        uint32_t* value_array;       // Holds the immediacy value (i.e. timestamp) corresponding to the instruction_array; range = 0 to 3
        uint32_t numLines;           // number of entries in the cache
		uint32_t MAX_VALUE;          // The value at of an cache entry for which it will be replace by on a cache miss
        uint32_t is_new_entry;

    public:
        // add member methods here, refer to repl_policies.h
		// 10/23 DA: Need to implement rank(), update(), and replaced()
    
        // Constructor
		explicit SRRIPReplPolicy(uint32_t _numLines, uint32_t _MAX_VALUE) : numLines(_numLines), MAX_VALUE(_MAX_VALUE) 
        {
            instruction_array = gm_calloc<uint32_t>(numLines);
            value_array = gm_calloc<uint32_t>(numLines);
			
			for(uint32_t i = 0; i <= numLines; i++)
			{
				value_array[i] = MAX_VALUE;
			}

        }
        
        // De-constructor
		~SRRIPReplPolicy() {
            gm_free(instruction_array);
			gm_free(value_array);
        }

        // input: instructionID = the index in the array of the hit/miss we want to update
		void update(uint32_t instructionID, const MemReq* req)
		{
            // Cache miss & update is being called after a replace()
            // Set the new value to MAX_VALUE-1 
            // Reset is_new_entry to be false
            if(is_new_entry) 
            {
                assert(value_array[instructionID] == (uint32_t)CLEAR_RPV);
                value_array[instructionID] = MAX_VALUE - 1;
            }
            else // update() called after a HIT!!!
            {
                value_array[instructionID] = CACHE_HIT;
            }

            is_new_entry = FALSE;
            
            assert(value_array[instructionID] >= 0);
            assert(value_array[instructionID] <= MAX_VALUE);
		}


        void replaced(uint32_t instructionID)
        {           
            assert(instructionID >= 0);
            assert(instructionID <= numLines); 
            
            is_new_entry = TRUE; // used to set value in update()
            instruction_array[instructionID] = CLEAR_CACHE_ENTRY; // set to invalid until it gets set in the calling function postinsert()  
            value_array[instructionID] = (uint32_t)CLEAR_RPV;            
        }


        template <typename C> inline uint32_t rank(const MemReq* req, C cands) 
        {
            uint32_t instructionID;
            
            // Will remain in here until it finds the earliest entry with MAX_VALUE
            // If no entry has MAX_VALUE it will increment the all values in the array
            // until eventually there is a match
            while (SEARCHING_FOR_VICTIM)
            {
                for (auto ci = cands.begin(); ci != cands.end(); ci.inc()) 
                {
                    instructionID = *ci;
                    if (value_array[instructionID] == MAX_VALUE) // 3
                    {
                        assert(value_array[instructionID] >= 0);
                        assert(value_array[instructionID] <= MAX_VALUE);

                        return instructionID; // FOUND VICTIM, return its ID
                    }
                }

                // No match found! Increment each RRPV value in cache and search again
                for (auto ci = cands.begin(); ci != cands.end(); ci.inc()) 
                {
                    instructionID = *ci;
                    value_array[instructionID]++;
                }                          
            }
        }


        // Need this bc I implemented the new interface as opposed to the legacy interface     
        DECL_RANK_BINDINGS; // see note above that I imported from repl_policies.h
};

/*******************************************************************************/
// LIRS Cache Replacement Policy

#include <climits>

struct Block {
	uint32_t IRR; // number of blocks between two calls to the same block
	uint32_t Recency;
};

typedef struct Block Block_t;

class LIRSReplPolicy : public ReplPolicy 
{
    protected:
        // add class member variables here
        //uint32_t* instruction_array; // Array for the lineID i.e. the instruction in the cache
        //uint32_t* value_array;       // Holds the immediacy value (i.e. timestamp) corresponding to the instruction_array; range = 0 to 3
        uint32_t numLines;             // number of entries in the cache
		uint32_t LIRS_size;
		uint32_t HIRS_size;
		uint32_t HIRS_size_nonresident;
		const uint32_t HIRS_divisor = 100; // Make HIRS_size = cache_size / HIRS_divisor
        uint32_t is_new_entry;

    public:
        // add member methods here, refer to repl_policies.h
		// 11/29 DA: Need to implement rank(), update(), and replaced()
		
        // Constructor
		explicit LIRSReplPolicy(uint32_t _numLines) : numLines(_numLines) 
        {
			// Used for small cache size, i.e. cache_size / HIRS_divisor == 0
			if (numLines <= HIRS_divisor)
			{
				LIRS_size = numLines - 1;
				HIRS_size = 1;
			}
			else
			{	// Set HIRS_size to 1% of total cache size
				HIRS_size = (numLines/HIRS_divisor);
				LIRS_size = numLines - HIRS_size;
			}
			
			HIRS_size_nonresident = HIRS_size;
			
			// myCache_size = LIRS_size + HIRS_size
			myCache = gm_calloc<Block_t>(numLines); 
			HIRS_nonresident = gm_calloc<Block_t>(HIRS_size_nonresident);
			
			// Set all initial values to "infinity"
			for(uint32_t i = 0; i < numLines; i++)
			{
				myCache[i].IRR = INT_MAX;
				myCache[i].Recency = INT_MAX;
			}
			
			for(uint32_t i = 0; i < HIRS_size_nonresident; i++)
			{
				HIRS_nonresident[i].IRR = INT_MAX;
				HIRS_nonresident[i].Recency = INT_MAX;
			}
        }
        
        // De-constructor
		~LIRSReplPolicy() 
		{
            gm_free(myCache);
			gm_free(HIRS_nonresident);
        }

		// TODO
		void update(uint32_t instructionID, const MemReq* req)
		{
		}

		// TODO
        void replaced(uint32_t instructionID)
        {                   
        }

		// TODO
        template <typename C> inline uint32_t rank(const MemReq* req, C cands) 
        {

        }


        // Need this bc I implemented the new interface as opposed to the legacy interface     
        DECL_RANK_BINDINGS; // see note above that I imported from repl_policies.h
};


#endif // RRIP_REPL_H_
