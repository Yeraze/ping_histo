#!/bin/bash
./ping_histo.py $1 -c 5 >> ping.log
cat ping.log | histogram.py -B -10,0,5,10,20,50,100,200,300,500,1000 | sed -e 's/∎/\-/g'
