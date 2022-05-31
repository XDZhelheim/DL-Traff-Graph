#! /bin/bash

gpu=4

# python -u pred_STGCN.py -f flow -t 3 -k -2 -g 3 > ../log_flow/STGCN3_OD.log
# python -u pred_STGCN.py -f flow -t 6 -k -2 -g 3 > ../log_flow/STGCN6_OD.log
# python -u pred_STGCN.py -f flow -t 12 -k -2 -g 3 > ../log_flow/STGCN12_OD.log
# python -u pred_DCRNN.py -f flow -k -2 -g 3 > ../log_flow/DCRNN_OD.log

# python -u pred_STGCN.py -f speed -t 3 -k -2 -g 3 > ../log_speed/STGCN3_speed_OD.log
# python -u pred_STGCN.py -f speed -t 6 -k -2 -g 3 > ../log_speed/STGCN6_speed_OD.log
# python -u pred_STGCN.py -f speed -t 12 -k -2 -g 3 > ../log_speed/STGCN12_speed_OD.log
# python -u pred_DCRNN.py -f speed -k -2 -g 3 > ../log_speed/DCRNN_speed_OD.log

python -u pred_STGCN.py -f flow -t 3 -k -3 -g ${gpu} > ../log_flow/STGCN3_pearson.log
python -u pred_STGCN.py -f flow -t 6 -k -3 -g ${gpu} > ../log_flow/STGCN6_pearson.log
python -u pred_STGCN.py -f flow -t 12 -k -3 -g ${gpu} > ../log_flow/STGCN12_pearson.log
python -u pred_DCRNN.py -f flow -k -3 -g ${gpu} > ../log_flow/DCRNN_pearson.log
