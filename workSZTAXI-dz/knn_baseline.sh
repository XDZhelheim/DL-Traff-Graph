#! /bin/bash

for step in {3,6,12}; do
    for((i=2;i<=20;i++)); do
        python -u pred_STGCN.py -t ${step} -g 6 -k ${i} > ../log_speed_knn/${step}/STGCN${step}_${i}.log
    done
done

