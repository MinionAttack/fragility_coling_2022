#!/usr/bin/env bash

source ../venv/bin/activate

# Arabic - PADT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python3 -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Arabic/cc.ar.300.vec \
    --train data/Pruebas/Kulmiez_SmithEtAl/Arabic-PADT/ar_padt-ud-train.conll \
    --dev data/Pruebas/Kulmiez_SmithEtAl/Arabic-PADT/ar_padt-ud-dev.conll \
    --test data/Pruebas/Kulmiez_SmithEtAl/Arabic-PADT/ar_padt-ud-test.conll \
    --model_path trained_models/Pruebas/Kulmiez_SmithEtAl/Arabic-PADT/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Basque - BDT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python3 -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Basque/cc.eu.300.vec \
    --train data/Pruebas/Kulmiez_SmithEtAl/Basque-BDT/eu_bdt-ud-train.conll \
    --dev data/Pruebas/Kulmiez_SmithEtAl/Basque-BDT/eu_bdt-ud-dev.conll \
    --test data/Pruebas/Kulmiez_SmithEtAl/Basque-BDT/eu_bdt-ud-test.conll \
    --model_path trained_models/Pruebas/Kulmiez_SmithEtAl/Basque-BDT/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Japanese - GSD
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python3 -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Japanese/cc.ja.300.vec \
    --train data/Pruebas/Kulmiez_SmithEtAl/Japanese-GSD/ja_gsd-ud-train.conll \
    --dev data/Pruebas/Kulmiez_SmithEtAl/Japanese-GSD/ja_gsd-ud-dev.conll \
    --test data/Pruebas/Kulmiez_SmithEtAl/Japanese-GSD/ja_gsd-ud-test.conll \
    --model_path trained_models/Pruebas/Kulmiez_SmithEtAl/Japanese-GSD/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Korean - GSD
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python3 -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Korean/cc.ko.300.vec \
    --train data/Pruebas/Kulmiez_SmithEtAl/Korean/GSD/ko_gsd-ud-train.conll \
    --dev data/Pruebas/Kulmiez_SmithEtAl/Korean/GSD/ko_gsd-ud-dev.conll \
    --test data/Pruebas/Kulmiez_SmithEtAl/Korean/GSD/ko_gsd-ud-test.conll \
    --model_path trained_models/Pruebas/Kulmiez_SmithEtAl/Korean/GSD/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Korean - Kaist
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python3 -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Sanskrit/cc.sa.300.vec \
    --train data/Pruebas/Kulmiez_SmithEtAl/Korean/Kaist/ko_kaist-ud-train.conll \
    --dev data/Pruebas/Kulmiez_SmithEtAl/Korean/Kaist/ko_kaist-ud-dev.conll \
    --test data/Pruebas/Kulmiez_SmithEtAl/Korean/Kaist/ko_kaist-ud-test.conll \
    --model_path trained_models/Pruebas/Kulmiez_SmithEtAl/Korean/Kaist/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Turkish - IMST
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python3 -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Turkish/cc.tr.300.vec \
    --train data/Pruebas/Kulmiez_SmithEtAl/Turkish-IMST/tr_imst-ud-train.conll \
    --dev data/Pruebas/Kulmiez_SmithEtAl/Turkish-IMST/tr_imst-ud-dev.conll \
    --test data/Pruebas/Kulmiez_SmithEtAl/Turkish-IMST/tr_imst-ud-test.conll \
    --model_path trained_models/Pruebas/Kulmiez_SmithEtAl/Turkish-IMST/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"
