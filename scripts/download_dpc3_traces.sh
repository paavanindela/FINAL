#!/bin/bash

mkdir -p $PWD/../lpf-traces
while read LINE
do
    wget -P $PWD/../lpf-traces -c http://hpca23.cse.tamu.edu/champsim-traces/speccpu/$LINE
done < dpc3_max_simpoint.txt
