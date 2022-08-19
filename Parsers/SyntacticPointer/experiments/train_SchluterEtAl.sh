#!/usr/bin/env bash

source ../venv/bin/activate

# Coptic - Scriptorium
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Coptic/cop.vectors \
    --train data/Pruebas/SchluterEtAl/Coptic-Scriptorium/cop_scriptorium-ud-train.conll \
    --dev data/Pruebas/SchluterEtAl/Coptic-Scriptorium/cop_scriptorium-ud-dev.conll \
    --test data/Pruebas/SchluterEtAl/Coptic-Scriptorium/cop_scriptorium-ud-test.conll \
    --model_path trained_models/Pruebas/SchluterEtAl/Coptic-Scriptorium/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Indonesian - GSD
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Indonesian/cc.id.300.vec \
    --train data/Pruebas/SchluterEtAl/Indonesian-GSD/id_gsd-ud-train.conll \
    --dev data/Pruebas/SchluterEtAl/Indonesian-GSD/id_gsd-ud-dev.conll \
    --test data/Pruebas/SchluterEtAl/Indonesian-GSD/id_gsd-ud-test.conll \
    --model_path trained_models/Pruebas/SchluterEtAl/Indonesian-GSD/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Old Church Slavonic - PROIEL
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Old_Church_Slavonic/cu.vectors \
    --train data/Pruebas/SchluterEtAl/Old_Church_Slavonic-PROIEL/cu_proiel-ud-train.conll \
    --dev data/Pruebas/SchluterEtAl/Old_Church_Slavonic-PROIEL/cu_proiel-ud-dev.conll \
    --test data/Pruebas/SchluterEtAl/Old_Church_Slavonic-PROIEL/cu_proiel-ud-test.conll \
    --model_path trained_models/Pruebas/SchluterEtAl/Old_Church_Slavonic-PROIEL/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Polish - PDB
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Polish/cc.pl.300.vec \
    --train data/Pruebas/SchluterEtAl/Polish-PDB/pl_pdb-ud-train.conll \
    --dev data/Pruebas/SchluterEtAl/Polish-PDB/pl_pdb-ud-dev.conll \
    --test data/Pruebas/SchluterEtAl/Polish-PDB/pl_pdb-ud-test.conll \
    --model_path trained_models/Pruebas/SchluterEtAl/Polish-PDB/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Sanskrit - Vedic
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Sanskrit/cc.sa.300.vec \
    --train data/Pruebas/SchluterEtAl/Sanskrit-Vedic/sa_vedic-ud-train.conll \
    --dev data/Pruebas/SchluterEtAl/Sanskrit-Vedic/sa_vedic-ud-dev.conll \
    --test data/Pruebas/SchluterEtAl/Sanskrit-Vedic/sa_vedic-ud-test.conll \
    --model_path trained_models/Pruebas/SchluterEtAl/Sanskrit-Vedic/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"
