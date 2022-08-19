#!/usr/bin/env bash

source ../venv/bin/activate

# Belarusian - HSE
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/LowResources/Belarusian-HSE/Iteracion_"$index" \
    --test data/Pruebas/LowResources/Belarusian-HSE/be_hse-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Galician - TreeGal
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/LowResources/Galician-TreeGal/Iteracion_"$index" \
    --test data/Pruebas/LowResources/Galician-TreeGal/gl_treegal-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Lithuanian - HSE
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/LowResources/Lithuanian-HSE/Iteracion_"$index" \
    --test data/Pruebas/LowResources/Lithuanian-HSE/lt_hse-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Marathi - UFAL
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/LowResources/Marathi-UFAL/Iteracion_"$index" \
    --test data/Pruebas/LowResources/Marathi-UFAL/mr_ufal-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Old_Russian - RNC
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/LowResources/Old_Russian-RNC/Iteracion_"$index" \
    --test data/Pruebas/LowResources/Old_Russian-RNC/orv_rnc-ud-test-light.conll
done

printf "===================================================================================\n===================================================================================\n"

# Welsh - CCG
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/LowResources/Welsh-CCG/Iteracion_"$index" \
    --test data/Pruebas/LowResources/Welsh-CCG/cy_ccg-ud-test.conll
done
