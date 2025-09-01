#!/usr/bin/env bash
source /home/vgg/anaconda3/etc/profile.d/conda.sh

conda activate kunpython37
CUDA_VISIBLE_DEVICES=1 python main.py \
        --test \
        --dataset_name "general_eval" \
        --datapath  /media/data3/code/wqj/dtu_test/ \
        --img_size 1184 1600 \
        --resume /media/data3/code/wqj/UMVS/pretrained_model/model.ckpt \
        --testlist /media/data3/code/wqj/UMVSNet-master/datasets/lists/dtu/test.txt
