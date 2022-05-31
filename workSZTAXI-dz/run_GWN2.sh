#! /bin/bash

gpu=4

# python -u pred_GraphWaveNet.py -f speed -k 0 -g ${gpu} > ../log_speed/GWN_speed_adj.log
# python -u pred_GraphWaveNet.py -f speed -k -1 -g ${gpu} > ../log_speed/GWN_speed_cor.log
# python -u pred_GraphWaveNet.py -f speed -k -2 -g ${gpu} > ../log_speed/GWN_speed_OD.log
python -u pred_GraphWaveNet.py -f speed -k -3 -g ${gpu} > ../log_speed/GWN_speed_pearson.log
python -u pred_GraphWaveNet.py -f speed -k -4 -g ${gpu} > ../log_speed/GWN_speed_cosine.log
python -u pred_GraphWaveNet.py -f speed -k -5 -g ${gpu} > ../log_speed/GWN_speed_DTW.log

# for((i=2;i<=20;i++)); do
#     python -u pred_GraphWaveNet.py -f speed -k ${i} -g ${gpu} > ../log_speed_knn/GWN/GWN_${i}.log
# done
