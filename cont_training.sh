#!/bin/bash

source ./venv2/bin/activate
export PYTHONPATH=/home/yotamg/PycharmProjects/PSMNet/dataloader:$PYTHONPATH


#python main.py --left_imgs Tau_left_images/left_images_filtered --right_imgs Tau_right_images/right_images_filtered --disp_imgs Tau_left_images/original_depth --savemodel checkpoints_filtered_orig_depth_PSM_only --cont --epoch 100 --loadmodel checkpoints_filtered_orig_depth_PSM_only/checkpoint_75.tar
python main.py --left_imgs Tau_left_images/left_images_clean --right_imgs Tau_right_images/right_images_clean --disp_imgs Tau_left_images/original_depth --savemodel checkpoints_clean_orig_depth_PSM_only --cont --epoch 200 --loadmodel checkpoints_clean_orig_depth_PSM_only/checkpoint_100.tar --clean
#
#python test.py --left_imgs Tau_left_images/left_images_filtered --right_imgs Tau_right_images/right_images_filtered --disp_imgs Tau_left_images/original_depth --loadmodel ./checkpoints_filtered_orig_depth_PSM_only/checkpoint_100.tar --cont
python test.py --left_imgs Tau_left_images/left_images_clean --right_imgs Tau_right_images/right_images_clean --disp_imgs Tau_left_images/original_depth --loadmodel ./checkpoints_clean_orig_depth_PSM_only/checkpoint_200.tar --cont --clean






