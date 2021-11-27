#!/bin/bash

./build_champsim.sh bimodal no ipcp ipcp ipcp lru 1 
./build_champsim.sh bimodal no ipcp+bingo ipcp ipcp lru 1
./build_champsim.sh bimodal no ipcp+sangam ipcp ipcp lru 1
./build_champsim.sh bimodal no ipcp+pangloss ipcp ipcp lru 1
./build_champsim.sh bimodal no ipcp+t_skid ipcp ipcp lru 1
./build_champsim.sh bimodal no ipcp+mlop ipcp ipcp lru 1
echo "TRACES"
while read LINE
do
    ./run_champsim.sh bimodal-no-ipcp-ipcp-ipcp-lru-1core 10 10 $LINE &
done < ./scripts/dpc3_max_simpoint.txt
wait
while read LINE
do
    ./run_champsim.sh bimodal-no-ipcp+bingo-ipcp-ipcp-lru-1core 10 10 $LINE &
done < ./scripts/dpc3_max_simpoint.txt
wait
while read LINE
do
    ./run_champsim.sh bimodal-no-ipcp+sangam-ipcp-ipcp-lru-1core 10 10 $LINE &
done < ./scripts/dpc3_max_simpoint.txt
wait
while read LINE
do
    ./run_champsim.sh bimodal-no-ipcp+pangloss-ipcp-ipcp-lru-1core 10 10 $LINE &
done < ./scripts/dpc3_max_simpoint.txt
wait
while read LINE
do
    ./run_champsim.sh bimodal-no-ipcp+t_skid-ipcp-ipcp-lru-1core 10 10 $LINE &
done < ./scripts/dpc3_max_simpoint.txt
wait
while read LINE
do
    ./run_champsim.sh bimodal-no-ipcp+mlop-ipcp-ipcp-lru-1core 10 10 $LINE &
done < ./scripts/dpc3_max_simpoint.txt
wait
echo "DONE"