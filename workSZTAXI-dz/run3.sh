#! /bin/bash

gpu=6

python -u pred_STGCN.py -f flow -t 3 -k -4 -g ${gpu} > ../log_flow/STGCN3_cosine.log
python -u pred_STGCN.py -f flow -t 6 -k -4 -g ${gpu} > ../log_flow/STGCN6_cosine.log
python -u pred_STGCN.py -f flow -t 12 -k -4 -g ${gpu} > ../log_flow/STGCN12_cosine.log
python -u pred_DCRNN.py -f flow -k -4 -g ${gpu} > ../log_flow/DCRNN_cosine.log
