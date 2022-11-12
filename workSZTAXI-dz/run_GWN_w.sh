#! /bin/bash

gpu=6

# for i in {3,4,6,7,8,9,10}; do
#     python -u pred_GraphWaveNet.py -f flow -k -666 -w ${i} -g ${gpu} > ../log_flow_w/GWN_w${i}.log
# done

for i in {3,4,5,6,7,8,9,10}; do
    python -u pred_GraphWaveNet.py -f flow -k -666 -w ${i} -g ${gpu} > ../log_flow_w/GWN_relu_sm_w${i}.log
done

