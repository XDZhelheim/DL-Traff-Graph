#! /bin/bash

gpu=3

for((i=5;i<=30;i++)); do
    python -u pred_ASTGCN.py -f flow -k ${i} -g ${gpu} > ../log_flow_knn/ASTGCN/ASTGCN_${i}.log
done
