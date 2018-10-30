#!/usr/bin/python

from __future__ import division
import sys
import os

#print "This is the name of the script: ", sys.argv[0]
#print "Number of arguments: ", len(sys.argv)
#print "The arguments are: " , str(sys.argv)


filename = sys.argv[1]
dirname = os.path.dirname(filename)
fp = open(filename, "r")
wp = open(dirname + '/results_multicore.txt', "w")
cycleCount = 0
cCycles = 0;
cycles = 0;
instructionCount = 0
missCount = 0
l3Count = 0
values = 0

for line in fp:
  values = line.split()
  if (values):
    if (values[0] == "cycles:"):
		cycles = int(values[1])
	elif (values[0] == "cCycles:"):
		cCycles = int(values[1])
		cycleCount += max(cycles, cCycles)	
    elif (values[0] == "instrs:"):
      instructionCount += int(values[1])
    elif (values[0] == "l3:"):
      l3Count = 1
    elif (values[0] == "mGETS:" or values[0] == "mGETXIM:" or values[0] == "mGETXSM:"):
      if (l3Count != 0):
        missCount += int(values[1])

wp.write(filename)
wp.write("\n")
wp.write(str(cycleCount))
wp.write("\n")
ipc = instructionCount/cycleCount
wp.write(str(ipc))
wp.write("\n")
mpki = 1000 * (missCount/instructionCount)
wp.write(str(mpki))
wp.write("\n\n")
fp.close()
wp.close()
