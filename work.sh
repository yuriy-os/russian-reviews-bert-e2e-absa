#!/usr/bin/env bash
TASK_NAME="laptop14"
CUDA_VISIBLE_DEVICES=0 python work.py \
                      --absa_home './bert-tfm-laptop14-finetune' \
                      --ckpt './bert-tfm-laptop14-finetune/checkpoint-2000' \
                      --model_type bert \
                      --data_dir './data_processed/test_data' \
                      --task_name ${TASK_NAME} \
                      --model_name_or_path './ru_conversational_cased_L-12_H-768_A-12_pt/pytorch_model.bin' \
                      --cache_dir ./cache \
                      --max_seq_length 510 \
                      --tagging_schema OT 