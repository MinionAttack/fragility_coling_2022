#!/usr/bin/env bash

CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r.json \
--num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 --grad_clip 5.0 \
--loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --remove_cycles \
--char_embedding random --word_embedding ud \
--word_path data/Pruebas/Embeddings/Ancient_Greek/grc.vectors \
--train data/Pruebas/UD/Ancient_Greek/Perseus/grc_perseus-ud-train.conll \
--dev data/Pruebas/UD/Ancient_Greek/Perseus/grc_perseus-ud-dev.conll \
--test data/Pruebas/UD/Ancient_Greek/Perseus/grc_perseus-ud-test.conll \
--model_path trained_models/UD/Ancient_Greek/Perseus/Iteracion_1
