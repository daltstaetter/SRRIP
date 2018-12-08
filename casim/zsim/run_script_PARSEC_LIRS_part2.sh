#!/bin/bash

#SECONDS=0
#echo "./hw4runscript PARSEC blackscholes LIRS"
#./hw4runscript PARSEC blackscholes LIRS

#SECONDS=0
#echo "./hw4runscript PARSEC bodytrack LIRS"
#./hw4runscript PARSEC bodytrack LIRS

#SECONDS=0
#echo "./hw4runscript PARSEC canneal LIRS"
#./hw4runscript PARSEC canneal LIRS

#SECONDS=0
#echo "./hw4runscript PARSEC dedup LIRS"
#./hw4runscript PARSEC dedup LIRS

#-----------------------------------------------------
#   PART TWO
#-----------------------------------------------------
SECONDS=0
echo "./hw4runscript PARSEC fluidanimate LIRS"
./hw4runscript PARSEC fluidanimate LIRS
echo "Minutes: $(($SECONDS/60))"

SECONDS=0
echo "./hw4runscript PARSEC freqmine LIRS"
./hw4runscript PARSEC freqmine LIRS
echo "Minutes: $(($SECONDS/60))"

SECONDS=0
echo "./hw4runscript PARSEC streamcluster LIRS"
./hw4runscript PARSEC streamcluster LIRS
echo "Minutes: $(($SECONDS/60))"

SECONDS=0
echo "./hw4runscript PARSEC swaptions LIRS"
./hw4runscript PARSEC swaptions LIRS
echo "Minutes: $(($SECONDS/60))"

SECONDS=0
echo "./hw4runscript PARSEC x264 LIRS"
./hw4runscript PARSEC x264 LIRS
echo "Minutes: $(($SECONDS/60))"

