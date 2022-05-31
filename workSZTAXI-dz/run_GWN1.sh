#! /bin/bash

gpu=3

python -u pred_GraphWaveNet.py -f flow -k 0 -g ${gpu} > ../log_flow/GWN_adj.log
python -u pred_GraphWaveNet.py -f flow -k -1 -g ${gpu} > ../log_flow/GWN_cor.log
python -u pred_GraphWaveNet.py -f flow -k -2 -g ${gpu} > ../log_flow/GWN_OD.log
python -u pred_GraphWaveNet.py -f flow -k -3 -g ${gpu} > ../log_flow/GWN_pearson.log
python -u pred_GraphWaveNet.py -f flow -k -4 -g ${gpu} > ../log_flow/GWN_cosine.log
python -u pred_GraphWaveNet.py -f flow -k -5 -g ${gpu} > ../log_flow/GWN_DTW.log

for((i=2;i<=20;i++)); do
    python -u pred_GraphWaveNet.py -f flow -k ${i} -g ${gpu} > ../log_flow_knn/GWN/GWN_${i}.log
done
