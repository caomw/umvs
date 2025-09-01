#!/usr/bin/env bash
source /home/vgg/anaconda3/etc/profile.d/conda.sh

conda activate mvs
CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 python -m torch.distributed.run --nproc_per_node=1 --master_port=2340 main.py \
        --sync_bn
