#!/usr/bin/env zsh

#for POPSIZE in 10 15 20 25 40 50 60 75 90 100 120 150 180 200 250 400 450 500 750 1000 2000 3000 5000; do
for POPSIZE in 2000; do
    #for SE in 0.2 0.5 1.0 2.0 5.0 10.0 50.0; do
    #for MU in 0.5 0.05 0.005 0.0025 0.0001 0.0005; do
    #for SD in 0.0 0.05 0.1 0.5 1.0; do
    for SD in 0.01 0.001 0.005; do
        for MU in 0.01 0.1; do
        #for MU in 0.05 0.005 0.0001 0.001; do
            for GAMMA in 0.1 0.01; do
                slim -l 0 -d "UnequalRecombination=$GAMMA"  -d "MutationRate=$MU" -d "PopSize=$POPSIZE" -d "selPerDiff=$SD" TandemRepeats_MultiPopsTogether.slim &
            done 
        done
        wait
    done
done

# -d "selSteep=$SE"