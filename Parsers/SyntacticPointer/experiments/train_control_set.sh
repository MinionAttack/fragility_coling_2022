#!/usr/bin/env bash

source ../venv/bin/activate

# Greek - GDT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Greek/cc.el.300.vec \
    --train data/Pruebas/ControlSet/Greek-GDT/el_gdt-ud-train.conll \
    --dev data/Pruebas/ControlSet/Greek-GDT/el_gdt-ud-dev.conll \
    --test data/Pruebas/ControlSet/Greek-GDT/el_gdt-ud-test.conll \
    --model_path trained_models/Pruebas/ControlSet/Greek-GDT/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Hindi - HDTB
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Hindi/cc.hi.300.vec \
    --train data/Pruebas/ControlSet/Hindi-HDTB/hi_hdtb-ud-train.conll \
    --dev data/Pruebas/ControlSet/Hindi-HDTB/hi_hdtb-ud-dev.conll \
    --test data/Pruebas/ControlSet/Hindi-HDTB/hi_hdtb-ud-test.conll \
    --model_path trained_models/Pruebas/ControlSet/Hindi-HDTB/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Polish - LFG
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Polish/cc.pl.300.vec \
    --train data/Pruebas/ControlSet/Polish-LFG/pl_lfg-ud-train.conll \
    --dev data/Pruebas/ControlSet/Polish-LFG/pl_lfg-ud-dev.conll \
    --test data/Pruebas/ControlSet/Polish-LFG/pl_lfg-ud-test.conll \
    --model_path trained_models/Pruebas/ControlSet/Polish-LFG/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Slovak - SNK
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Slovak/cc.sk.300.vec \
    --train data/Pruebas/ControlSet/Slovak-SNK/sk_snk-ud-train.conll \
    --dev data/Pruebas/ControlSet/Slovak-SNK/sk_snk-ud-dev.conll \
    --test data/Pruebas/ControlSet/Slovak-SNK/sk_snk-ud-test.conll \
    --model_path trained_models/Pruebas/ControlSet/Slovak-SNK/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Slovenian - SSJ
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Slovenian/cc.sl.300.vec \
    --train data/Pruebas/ControlSet/Slovenian-SSJ/sl_ssj-ud-train.conll \
    --dev data/Pruebas/ControlSet/Slovenian-SSJ/sl_ssj-ud-dev.conll \
    --test data/Pruebas/ControlSet/Slovenian-SSJ/sl_ssj-ud-test.conll \
    --model_path trained_models/Pruebas/ControlSet/Slovenian-SSJ/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Swedish - Talbanken
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Swedish/cc.sv.300.vec \
    --train data/Pruebas/ControlSet/Swedish-Talbanken/sv_talbanken-ud-train.conll \
    --dev data/Pruebas/ControlSet/Swedish-Talbanken/sv_talbanken-ud-dev.conll \
    --test data/Pruebas/ControlSet/Swedish-Talbanken/sv_talbanken-ud-test.conll \
    --model_path trained_models/Pruebas/ControlSet/Swedish-Talbanken/Iteracion_"$index"
done
