#!/bin/bash

./build_champsim.sh bimodal no ipcpe ipcp ipcp lru 1 

echo "TRACES"
while read LINE
do
    ./run_champsim.sh bimodal-no-ipcpe-ipcp-ipcp-lru-1core 10 10 $LINE &
done < ./scripts/dpc3_max_simpoint.txt
wait
echo "DONE"