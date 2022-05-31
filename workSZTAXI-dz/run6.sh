#! /bin/bash

gpu=2

python -u pred_STGCN.py -f flow -t 3 -k -5 -g ${gpu} > ../log_flow/STGCN3_DTW.log
python -u pred_STGCN.py -f flow -t 6 -k -5 -g ${gpu} > ../log_flow/STGCN6_DTW.log
python -u pred_STGCN.py -f flow -t 12 -k -5 -g ${gpu} > ../log_flow/STGCN12_DTW.log
python -u pred_DCRNN.py -f flow -k -5 -g ${gpu} > ../log_flow/DCRNN_DTW.log
