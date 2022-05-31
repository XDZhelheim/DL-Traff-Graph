#! /bin/bash

gpu=1

python -u pred_STGCN.py -f speed -t 3 -k -3 -g ${gpu} > ../log_speed/STGCN3_speed_pearson.log
python -u pred_STGCN.py -f speed -t 6 -k -3 -g ${gpu} > ../log_speed/STGCN6_speed_pearson.log
python -u pred_STGCN.py -f speed -t 12 -k -3 -g ${gpu} > ../log_speed/STGCN12_speed_pearson.log
python -u pred_DCRNN.py -f speed -k -3 -g ${gpu} > ../log_speed/DCRNN_speed_pearson.log
