#!/usr/bin/env bash
TASK_NAME="laptop14"
ABSA_TYPE=tfm
CUDA_VISIBLE_DEVICES=0,2,3 python /content/BERT-E2E-ABSA/main.py \
                         --model_type bert \
                         --absa_type ${ABSA_TYPE} \
                         --tfm_mode finetune \
                         --fix_tfm 0 \
                         --model_name_or_path '/content/ru_conversational_cased_L-12_H-768_A-12_pt/' \
                         --data_dir '/content/data_processed' \
                         --task_name ${TASK_NAME} \
                         --per_gpu_train_batch_size 8 \
                         --per_gpu_eval_batch_size 8 \
                         --learning_rate 2e-5 \
                         --do_train \
                         --do_eval \
                         --tagging_schema OT \
                         --overfit 0 \
                         --overwrite_output_dir \
                         --MASTER_ADDR localhost \
                         --MASTER_PORT 28512 \
                         --max_steps 2000 \
                         --save_steps 1000 \
                         --eval_all_checkpoints
