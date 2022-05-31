#! /bin/bash

gpu=3

python -u pred_STGCN.py -f speed -t 3 -k -5 -g ${gpu} > ../log_speed/STGCN3_speed_DTW.log
python -u pred_STGCN.py -f speed -t 6 -k -5 -g ${gpu} > ../log_speed/STGCN6_speed_DTW.log
python -u pred_STGCN.py -f speed -t 12 -k -5 -g ${gpu} > ../log_speed/STGCN12_speed_DTW.log
# python -u pred_DCRNN.py -f speed -k -5 -g ${gpu} > ../log_speed/DCRNN_speed_DTW.log
