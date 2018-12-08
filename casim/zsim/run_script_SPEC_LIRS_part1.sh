#!/bin/bash

#SECONDS=0
#echo "./hw4runscript SPEC bzip2 LIRS"
#./hw4runscript SPEC bzip2 LIRS
#echo "Minutes: $(($SECONDS/60))"

SECONDS=0
echo "./hw4runscript SPEC gcc LIRS"
./hw4runscript SPEC gcc LIRS
echo "Minutes: $(($SECONDS/60))"

SECONDS=0
echo "./hw4runscript SPEC mcf LIRS"
./hw4runscript SPEC mcf LIRS
echo "Minutes: $(($SECONDS/60))"

SECONDS=0
echo "./hw4runscript SPEC hmmer LIRS"
./hw4runscript SPEC hmmer LIRS
echo "Minutes: $(($SECONDS/60))"

SECONDS=0
echo "./hw4runscript SPEC sjeng LIRS"
./hw4runscript SPEC sjeng LIRS
echo "Minutes: $(($SECONDS/60))"

SECONDS=0
echo "./hw4runscript SPEC libquantum LIRS"
./hw4runscript SPEC libquantum LIRS
echo "Minutes: $(($SECONDS/60))"

### Uncomment from here on down
SECONDS=0
echo "./hw4runscript SPEC xalancbmk LIRS"
./hw4runscript SPEC xalancbmk LIRS
echo "Minutes: $(($SECONDS/60))"

#----------------------------------------
#SECONDS=0
#echo "./hw4runscript SPEC milc LIRS"
#./hw4runscript SPEC milc LIRS
#echo "Minutes: $(($SECONDS/60))"

#SECONDS=0
#echo "./hw4runscript SPEC leslie3d LIRS"
#./hw4runscript SPEC leslie3d LIRS
#echo "Minutes: $(($SECONDS/60))"

#SECONDS=0
#echo "./hw4runscript SPEC namd LIRS"
#./hw4runscript SPEC namd LIRS
#echo "Minutes: $(($SECONDS/60))"

#SECONDS=0
#echo "./hw4runscript SPEC soplex LIRS"
#./hw4runscript SPEC soplex LIRS
#echo "Minutes: $(($SECONDS/60))"

#SECONDS=0
#echo "./hw4runscript SPEC cactusADM LIRS"
#./hw4runscript SPEC cactusADM LIRS
#echo "Minutes: $(($SECONDS/60))"

#SECONDS=0
#echo "./hw4runscript SPEC calculix LIRS"
#./hw4runscript SPEC calculix LIRS
#echo "Minutes: $(($SECONDS/60))"

#SECONDS=0
#echo "./hw4runscript SPEC lbm LIRS"
#./hw4runscript SPEC lbm LIRS
#echo "Minutes: $(($SECONDS/60))"
