#!/usr/bin/env bash

source ../venv/bin/activate

# Belarusian - HSE
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Belarusian/cc.be.300.vec \
    --train data/Pruebas/LowResources/Belarusian-HSE/be_hse-ud-train.conll \
    --dev data/Pruebas/LowResources/Belarusian-HSE/be_hse-ud-dev.conll \
    --test data/Pruebas/LowResources/Belarusian-HSE/be_hse-ud-test.conll \
    --model_path trained_models/Pruebas/LowResources/Belarusian-HSE/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Galician - TreeGal
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Galician/cc.gl.300.vec \
    --train data/Pruebas/LowResources/Galician-TreeGal/gl_treegal-ud-train.conll \
    --dev data/Pruebas/LowResources/Galician-TreeGal/gl_treegal-ud-dev.conll \
    --test data/Pruebas/LowResources/Galician-TreeGal/gl_treegal-ud-test.conll \
    --model_path trained_models/Pruebas/LowResources/Galician-TreeGal/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Lithuanian - HSE
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Lithuanian/cc.lt.300.vec \
    --train data/Pruebas/LowResources/Lithuanian-HSE/lt_hse-ud-train.conll \
    --dev data/Pruebas/LowResources/Lithuanian-HSE/lt_hse-ud-dev.conll \
    --test data/Pruebas/LowResources/Lithuanian-HSE/lt_hse-ud-test.conll \
    --model_path trained_models/Pruebas/LowResources/Lithuanian-HSE/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Marathi - UFAL
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Marathi/cc.mr.300.vec \
    --train data/Pruebas/LowResources/Marathi-UFAL/mr_ufal-ud-train.conll \
    --dev data/Pruebas/LowResources/Marathi-UFAL/mr_ufal-ud-dev.conll \
    --test data/Pruebas/LowResources/Marathi-UFAL/mr_ufal-ud-test.conll \
    --model_path trained_models/Pruebas/LowResources/Marathi-UFAL/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Old_Russian - RNC
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Old_Russian/cc.orv.300.vec \
    --train data/Pruebas/LowResources/Old_Russian-RNC/orv_rnc-ud-train.conll \
    --dev data/Pruebas/LowResources/Old_Russian-RNC/orv_rnc-ud-dev.conll \
    --test data/Pruebas/LowResources/Old_Russian-RNC/orv_rnc-ud-test-light.conll \
    --model_path trained_models/Pruebas/LowResources/Old_Russian-RNC/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Welsh - CCG
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Welsh/cc.cy.300.vec \
    --train data/Pruebas/LowResources/Welsh-CCG/cy_ccg-ud-train.conll \
    --dev data/Pruebas/LowResources/Welsh-CCG/cy_ccg-ud-dev.conll \
    --test data/Pruebas/LowResources/Welsh-CCG/cy_ccg-ud-test.conll \
    --model_path trained_models/Pruebas/LowResources/Welsh-CCG/Iteracion_"$index"
done
