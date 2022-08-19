#!/usr/bin/env bash

source ../venv/bin/activate

# Greek - GDT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/ControlSet/Greek-GDT/Iteracion_"$index" \
    --test data/Pruebas/ControlSet/Greek-GDT/el_gdt-ud-test_udpipe.conll
done

printf "===================================================================================\n===================================================================================\n"

# Hindi - HDTB
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/ControlSet/Hindi-HDTB/Iteracion_"$index" \
    --test data/Pruebas/ControlSet/Hindi-HDTB/hi_hdtb-ud-test_udpipe.conll
done

printf "===================================================================================\n===================================================================================\n"

# Polish - LFG
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/ControlSet/Polish-LFG/Iteracion_"$index" \
    --test data/Pruebas/ControlSet/Polish-LFG/pl_lfg-ud-test_udpipe.conll
done

printf "===================================================================================\n===================================================================================\n"

# Slovak - SNK
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/ControlSet/Slovak-SNK/Iteracion_"$index" \
    --test data/Pruebas/ControlSet/Slovak-SNK/sk_snk-ud-test_udpipe.conll
done

printf "===================================================================================\n===================================================================================\n"

# Slovenian - SSJ
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/ControlSet/Slovenian-SSJ/Iteracion_"$index" \
    --test data/Pruebas/ControlSet/Slovenian-SSJ/sl_ssj-ud-test_udpipe.conll
done

printf "===================================================================================\n===================================================================================\n"

# Swedish - Talbanken
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/ControlSet/Swedish-Talbanken/Iteracion_"$index" \
    --test data/Pruebas/ControlSet/Swedish-Talbanken/sv_talbanken-ud-test_udpipe.conll
done
