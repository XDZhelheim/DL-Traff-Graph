#! /bin/bash

gpu=2

python -u pred_STGCN.py -f speed -t 3 -k -4 -g ${gpu} > ../log_speed/STGCN3_speed_cosine.log
python -u pred_STGCN.py -f speed -t 6 -k -4 -g ${gpu} > ../log_speed/STGCN6_speed_cosine.log
python -u pred_STGCN.py -f speed -t 12 -k -4 -g ${gpu} > ../log_speed/STGCN12_speed_cosine.log
python -u pred_DCRNN.py -f speed -k -4 -g ${gpu} > ../log_speed/DCRNN_speed_cosine.log
