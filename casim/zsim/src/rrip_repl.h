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
		void update(uint32_t instructionID, const MemReq* req, Address lineAddr)
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

        void replaced(uint32_t instructionID, Address lineAddr)
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
//
// Note: Make a one-to-one mapping between myCache[blockID] and array[id] (cache_arrays.cpp:43)
//		 I do this because 'id' is the index, i.e. array[id], and not actually the instruction
//		 The only way to get the instruction is to map them to the same indices
//       i.e. array[id] -> myCache[blockID]

#include <climits>

typedef uint32_t boolean;

struct Block {
	uint32_t IRR; // number of blocks between two calls to the same block
	uint32_t Recency;
	//uint32_t blockID;
	boolean is_HIR;
    Address instruction_address;
};

typedef struct Block Block_t;

class LIRSReplPolicy : public ReplPolicy 
{
    protected:
        // add class member variables here
        Block_t* myCache; // Array for the lineID i.e. the instruction in the cache
        Block_t* HIRS_NR;       // Holds the immediacy value (i.e. timestamp) corresponding to the instruction_array; range = 0 to 3
        Block_t NR_HIR_hit;
        uint32_t numLines;             // number of entries in the cache
		uint32_t LIRS_size;
		uint32_t HIRS_size;
		uint32_t HIRS_size_NR;
		const uint32_t HIRS_divisor = 100; // Make HIRS_size = cache_size / HIRS_divisor
        boolean is_new_entry;
		boolean is_NR_HIR;

    public:
        // add member methods here, refer to repl_policies.h
		// 10/23 DA: Need to implement rank(), update(), and replaced()
    
		explicit LIRSReplPolicy(uint32_t _numLines) : numLines(_numLines) 
        {
			// Used for small cache size (<=100), i.e. cache_size / HIRS_divisor == 0
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
		
			HIRS_size_NR = HIRS_size;
			
			// myCache_size = LIRS_size + HIRS_size
			myCache = gm_calloc<Block_t>(numLines); 
			HIRS_NR = gm_calloc<Block_t>(HIRS_size_NR);
			
			// Set all initial values to "infinity"
			for(uint32_t i = 0; i < numLines; i++)
			{
				myCache[i].IRR = INT_MAX;
				myCache[i].Recency = INT_MAX;
				myCache[i].is_HIR = TRUE;
                myCache[i].instruction_address = 0;
			}
			
			for(uint32_t i = 0; i < HIRS_size_NR; i++)
			{
				HIRS_NR[i].IRR = INT_MAX;
				HIRS_NR[i].Recency = INT_MAX;
				HIRS_NR[i].is_HIR = TRUE;
                HIRS_NR[i].instruction_address = 0;
			}
        }
        
        // De-constructor
		~LIRSReplPolicy() 
		{
            gm_free(myCache);
			gm_free(HIRS_NR);
        }

		// TODO
        // input: blockID = the index in the array (array[id]) of the hit/miss we want to update
		// ******* Corner Case: you get same instruction twice. You only update the recency and IRR of that block
		// ******* All other blocks remain untouched.
		void update(uint32_t blockID, const MemReq* req, Address lineAddr)
		{
            // Cache miss & update is being called after a replace()
            // Set the new value to MAX_VALUE-1 
            // Reset is_new_entry to be false
            if (is_new_entry) // update() called after a cache miss!
            {	// If we are in here then blockID is the index that we want to replace.
				// This is set in the rank() function
				
				if (is_NR_HIR) // Cache miss but NR_HIR HIT!!! 
                {	// Transfer Recency value from HIRS_NR  
					myCache[blockID].IRR = NR_HIR_hit.Recency;
					myCache[blockID].Recency = 0;
					myCache[blockID].is_HIR = FALSE; 
					myCache[blockID].instruction_address = NR_HIR_hit.instruction_address;
					is_NR_HIR = FALSE;

                    // Pruning Required - After a NR_HIR Hit we need to designate a new 
                    //                    HIR block. Select the one with the largest Recency.
                    { // START Pruning
                        uint32_t maxRecencyLIRS = 0;
    					uint32_t maxRecencyIndexLIRS = 0;
	    				
		    			// 1) Search through LIR blocks in cache
			    		for (uint32_t i = 0; i < numLines; i++)
				    	{
    						maxRecencyIndexLIRS = (maxRecencyLIRS > myCache[i].Recency) ? maxRecencyIndexLIRS : i;
	    				    maxRecencyLIRS = (maxRecencyLIRS > myCache[i].Recency) ? maxRecencyLIRS : myCache[i].Recency;
			    		}
				    	
			    		for (uint32_t i = 0; i < numLines; i++)
    					{
                            // Re-init is_HIR status
		        			myCache[i].is_HIR = FALSE;
				        }

			            myCache[maxRecencyIndexLIRS].is_HIR = TRUE;
                    } // END Pruning
				}
				else // is a new entry not in myCache or HIRS_NR
				{	
					myCache[blockID].Recency = INT_MAX;  
					myCache[blockID].IRR = INT_MAX;
					myCache[blockID].is_HIR = TRUE;
                    myCache[blockID].instruction_address = lineAddr;
				}
            }
            else // update() called after a HIT!!!
            {
				// 1) Update
				//    a. if LIR_HIT update current_block
				//	  b. if HIR_HIT update block and move to LIR
				// 2) Increment all other values properly (Don't double count)
				//	  a. Algorithm is to count how many instructions have a Recency value <= myRecency and set recency= that
				//	  b. need to skip this calculation for the current blockID
				
				// Update block values
				myCache[blockID].IRR = myCache[blockID].Recency;
				myCache[blockID].Recency = 0;
				
				if(myCache[blockID].is_HIR) // -> promote to LIR
				{
					// 1) Search through LIR blocks in cache
					// 2) Find the LIR entry with the max(Recency), i.e. myCache[maxRecencyIndex]
					// 3) Switch myCache[blockID] with myCache[maxRecencyIndex] 
					// 		a. Set myCache[blockID].is_HIR = FALSE;
					// 		b. Set myCache[maxRecencyIndex].is_HIR = TRUE;
					
					uint32_t maxRecency = 0;
					uint32_t maxRecencyIndex = 0;
					
					// 1) Search through LIR blocks in cache
					for (uint32_t i = 0; i < numLines; i++)
					{
						if (myCache[i].is_HIR == FALSE)
						{   // 2) Find the LIR entry with the max(Recency)
							maxRecencyIndex = (maxRecency > myCache[i].Recency) ? maxRecencyIndex : i;
							maxRecency = (maxRecency > myCache[i].Recency) ? maxRecency : myCache[i].Recency;
						}
					}
					
					// 3) Switch block sets
					if (myCache[blockID].Recency < maxRecency)
					{
						myCache[blockID].is_HIR = FALSE;
						myCache[maxRecencyIndex].is_HIR = TRUE;
					}
				}
            }




///////////////////////////////////////////////////////////////////////////////
			// Increment the Recency of all blocks in the cache
			for (uint32_t i = 0; i < numLines; i++)
			{	
				if (i == blockID)
					continue;
				else
				{
					myCache[i].Recency++;
				}
			}
			
			// Increment the Recency of all HIRS_NR
			for (uint32_t i = 0; i < HIRS_size_NR; i++)
			{
				HIRS_NR[i].Recency++;
				HIRS_NR[i].is_HIR = TRUE;
			}
			
            is_new_entry = FALSE;
		}

		// TODO
        void replaced(uint32_t blockID, Address lineAddr)
        {           
            // Need to look at incoming lineAddr to see if its an HIR_nonresident
            assert(blockID >= 0);
            assert(blockID <= numLines); 
            
            is_new_entry = TRUE; // used to set value in update()
			is_NR_HIR = FALSE;
			
            // Check if the new instruction lineAddr is in the NR_HIR
			for (uint32_t i = 0; i < HIRS_size_NR; i++)
            {
                if (HIRS_NR[i].instruction_address == lineAddr)
                {   // Swap HIRS_NR[i] -> NR_HIR_hit
                    // myCache[evict] -> HIRS_NR[i]
                    // in update() NR_HIR_hit -> myCache[evict]
                    
                    is_NR_HIR = TRUE;
			        NR_HIR_hit.Recency = HIRS_NR[i].Recency;
			        NR_HIR_hit.IRR = HIRS_NR[i].IRR;
			        NR_HIR_hit.instruction_address = HIRS_NR[i].instruction_address;

			        //Replace index i with the HIR from the cache
			        HIRS_NR[i].Recency =  myCache[blockID].Recency;
			        HIRS_NR[i].IRR = myCache[blockID].IRR;
			        HIRS_NR[i].instruction_address = myCache[blockID].instruction_address;
			    }
            } 

            // Missed both Cache and NR_HIR, myCache[evict] -> HIRS_NR[max_recency]
            if (is_NR_HIR == FALSE)
            {   // Find max Recency index to replace 

			    // Add the evicted resident HIR entry to the nonresident HIR array
			    uint32_t maxRecencyHIRS = 0;
			    uint32_t maxRecencyIndexHIRS = 0;
			
			    for (uint32_t i = 0; i < HIRS_size_NR; i++)
			    {
			    	maxRecencyIndexHIRS = (maxRecencyHIRS > HIRS_NR[i].Recency) ? maxRecencyIndexHIRS : i;
			    	maxRecencyHIRS = (maxRecencyHIRS > HIRS_NR[i].Recency) ? maxRecencyHIRS : HIRS_NR[i].Recency;
			    }
                
			    // Transfer to nonresident HIR
                // Swap myCache[evict] -> HIRS_NR[max_recency]
                // in update() newBlock -> myCache[evict]

			    HIRS_NR[maxRecencyIndexHIRS].IRR = myCache[blockID].IRR;
			    HIRS_NR[maxRecencyIndexHIRS].Recency = myCache[blockID].Recency;
			    HIRS_NR[maxRecencyIndexHIRS].is_HIR = TRUE;
			    HIRS_NR[maxRecencyIndexHIRS].instruction_address = myCache[blockID].instruction_address;
            }
			
			// Reset to default values, Actual values are set in postinsert() -> update() 
			myCache[blockID].Recency = INT_MAX;  
			myCache[blockID].IRR = INT_MAX;
        }

        template <typename C> inline uint32_t rank(const MemReq* req, C cands) 
        {
			uint32_t maxRecencyHIRS = 0;
			uint32_t maxRecencyIndexHIRS = 0;
            uint32_t i;
			
			// Search for HIRS index with max Recency
            for (auto ci = cands.begin(); ci != cands.end(); ci.inc()) 
			{
                i = *ci;
				if (myCache[i].is_HIR == TRUE)
				{   
					maxRecencyIndexHIRS = (maxRecencyHIRS > myCache[i].Recency) ? maxRecencyIndexHIRS : i;
					maxRecencyHIRS = (maxRecencyHIRS > myCache[i].Recency) ? maxRecencyHIRS : myCache[i].Recency;
				}
			}
			
			return maxRecencyIndexHIRS;
        }

        // Need this bc I implemented the new interface as opposed to the legacy interface     
        DECL_RANK_BINDINGS; // see note above that I imported from repl_policies.h

};


#endif // RRIP_REPL_H_
