#!/usr/bin/env bash

source ../venv/bin/activate

# Ancient_Greek - Perseus
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_100d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Ancient_Greek/grc.vectors \
    --train data/Pruebas/UD/Ancient_Greek/Perseus/grc_perseus-ud-train.conll \
    --dev data/Pruebas/UD/Ancient_Greek/Perseus/grc_perseus-ud-dev.conll \
    --test data/Pruebas/UD/Ancient_Greek/Perseus/grc_perseus-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Ancient_Greek/Perseus/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Ancient_Greek - PROIEL
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_100d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Ancient_Greek/grc.vectors \
    --train data/Pruebas/UD/Ancient_Greek/PROIEL/grc_proiel-ud-train.conll \
    --dev data/Pruebas/UD/Ancient_Greek/PROIEL/grc_proiel-ud-dev.conll \
    --test data/Pruebas/UD/Ancient_Greek/PROIEL/grc_proiel-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Ancient_Greek/PROIEL/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Bulgarian - BTB
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Bulgarian/cc.bg.300.vec \
    --train data/Pruebas/UD/Bulgarian-BTB/bg_btb-ud-train.conll \
    --dev data/Pruebas/UD/Bulgarian-BTB/bg_btb-ud-dev.conll \
    --test data/Pruebas/UD/Bulgarian-BTB/bg_btb-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Bulgarian-BTB/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Catalan - AnCora
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Catalan/cc.ca.300.vec \
    --train data/Pruebas/UD/Catalan-AnCora/ca_ancora-ud-train.conll \
    --dev data/Pruebas/UD/Catalan-AnCora/ca_ancora-ud-dev.conll \
    --test data/Pruebas/UD/Catalan-AnCora/ca_ancora-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Catalan-AnCora/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Chinese - GSD
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Chinese/cc.zh.300.vec \
    --train data/Pruebas/UD/Chinese-GSD/zh_gsd-ud-train.conll \
    --dev data/Pruebas/UD/Chinese-GSD/zh_gsd-ud-dev.conll \
    --test data/Pruebas/UD/Chinese-GSD/zh_gsd-ud-test.conll \
    --model_path trained_models/Pruebas_no_cycles/Chinese-GSD/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Czech - CAC
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Czech/cc.cs.300.vec \
    --train data/Pruebas/UD/Czech/CAC/cs_cac-ud-train.conll \
    --dev data/Pruebas/UD/Czech/CAC/cs_cac-ud-dev.conll \
    --test data/Pruebas/UD/Czech/CAC/cs_cac-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Czech/CAC/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Czech - CLTT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Czech/cc.cs.300.vec \
    --train data/Pruebas/UD/Czech/CLTT/cs_cltt-ud-train.conll \
    --dev data/Pruebas/UD/Czech/CLTT/cs_cltt-ud-dev.conll \
    --test data/Pruebas/UD/Czech/CLTT/cs_cltt-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Czech/CLTT/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Czech - FicTree
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Czech/cc.cs.300.vec \
    --train data/Pruebas/UD/Czech/FicTree/cs_fictree-ud-train.conll \
    --dev data/Pruebas/UD/Czech/FicTree/cs_fictree-ud-dev.conll \
    --test data/Pruebas/UD/Czech/FicTree/cs_fictree-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Czech/FicTree/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Czech - PDT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Czech/cc.cs.300.vec \
    --train data/Pruebas/UD/Czech/PDT/cs_pdt-ud-train.conll \
    --dev data/Pruebas/UD/Czech/PDT/cs_pdt-ud-dev.conll \
    --test data/Pruebas/UD/Czech/PDT/cs_pdt-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Czech/PDT/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Dutch - Alpino
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Dutch/cc.nl.300.vec \
    --train data/Pruebas/UD/Dutch/Alpino/nl_alpino-ud-train.conll \
    --dev data/Pruebas/UD/Dutch/Alpino/nl_alpino-ud-dev.conll \
    --test data/Pruebas/UD/Dutch/Alpino/nl_alpino-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Dutch/Alpino/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Dutch - LassySmall
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Dutch/cc.nl.300.vec \
    --train data/Pruebas/UD/Dutch/LassySmall/nl_lassysmall-ud-train.conll \
    --dev data/Pruebas/UD/Dutch/LassySmall/nl_lassysmall-ud-dev.conll \
    --test data/Pruebas/UD/Dutch/LassySmall/nl_lassysmall-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Dutch/LassySmall/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# English - EWT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/English/cc.en.300.vec \
    --train data/Pruebas/UD/English-EWT/en_ewt-ud-train.conll \
    --dev data/Pruebas/UD/English-EWT/en_ewt-ud-dev.conll \
    --test data/Pruebas/UD/English-EWT/en_ewt-ud-test.conll \
    --model_path trained_models/Pruebas/UD/English-EWT/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Finnish - TDT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Finnish/cc.fi.300.vec \
    --train data/Pruebas/UD/Finnish-TDT/fi_tdt-ud-train.conll \
    --dev data/Pruebas/UD/Finnish-TDT/fi_tdt-ud-dev.conll \
    --test data/Pruebas/UD/Finnish-TDT/fi_tdt-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Finnish-TDT/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# French - GSD
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/French/cc.fr.300.vec \
    --train data/Pruebas/UD/French-GSD/fr_gsd-ud-train.conll \
    --dev data/Pruebas/UD/French-GSD/fr_gsd-ud-dev.conll \
    --test data/Pruebas/UD/French-GSD/fr_gsd-ud-test.conll \
    --model_path trained_models/Pruebas/UD/French-GSD/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# German - GSD
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 \
    --char_embedding random --word_embedding ud \
    --word_path data/Pruebas/Embeddings/French/cc.de.300.vec \
    --train data/Pruebas/UD/German-GSD/de_gsd-ud-train.conll \
    --dev data/Pruebas/UD/German-GSD/de_gsd-ud-dev.conll \
    --test data/Pruebas/UD/German-GSD/de_gsd-ud-test.conll \
    --model_path trained_models/Pruebas/UD/German-GSD/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Hebrew - HTB
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Hebrew/cc.he.300.vec \
    --train data/Pruebas/UD/Hebrew-HTB/he_htb-ud-train.conll \
    --dev data/Pruebas/UD/Hebrew-HTB/he_htb-ud-dev.conll \
    --test data/Pruebas/UD/Hebrew-HTB/he_htb-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Hebrew-HTB/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Italian - ISDT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Italian/cc.it.300.vec \
    --train data/Pruebas/UD/Italian-ISDT/it_isdt-ud-train.conll \
    --dev data/Pruebas/UD/Italian-ISDT/it_isdt-ud-dev.conll \
    --test data/Pruebas/UD/Italian-ISDT/it_isdt-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Italian-ISDT/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Kazakh - KTB
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Kazakh/cc.kk.300.vec \
    --train data/Pruebas/UD/Kazakh-KTB/kk_ktb-ud-train.conll \
    --dev data/Pruebas/UD/Kazakh-KTB/kk_ktb-ud-dev.conll \
    --test data/Pruebas/UD/Kazakh-KTB/kk_ktb-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Kazakh-KTB/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Norwegian - Bokmaal
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Norwegian-Bokmaal/cc.no.300.vec \
    --train data/Pruebas/UD/Norwegian/Bokmaal/no_bookmal-ud-train.conll \
    --dev data/Pruebas/UD/Norwegian/Bokmaal/no_bookmal-ud-dev.conll \
    --test data/Pruebas/UD/Norwegian/Bokmaal/no_bookmal-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Norwegian/Bokmaal/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Norwegian - Nynorsk
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Norwegian-Nynorsk/cc.nn.300.vec \
    --train data/Pruebas/UD/Norwegian/Nynorsk/no_nynorsk-ud-train.conll \
    --dev data/Pruebas/UD/Norwegian/Nynorsk/no_nynorsk-ud-dev.conll \
    --test data/Pruebas/UD/Norwegian/Nynorsk/no_nynorsk-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Norwegian/Nynorsk/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Romanian - RRT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Romanian/cc.ro.300.vec \
    --train data/Pruebas/UD/Romanian-RRT/ro_rrt-ud-train.conll \
    --dev data/Pruebas/UD/Romanian-RRT/ro_rrt-ud-dev.conll \
    --test data/Pruebas/UD/Romanian-RRT/ro_rrt-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Romanian-RRT/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Russian - GSD
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Russian/cc.ru.300.vec \
    --train data/Pruebas/UD/Russian/GSD/ru_gsd-ud-train.conll \
    --dev data/Pruebas/UD/Russian/GSD/ru_gsd-ud-dev.conll \
    --test data/Pruebas/UD/Russian/GSD/ru_gsd-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Russian/GSD/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Russian - SynTagRus
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Russian/cc.ru.300.vec \
    --train data/Pruebas/UD/Russian/SynTagRus/ru_syntagrus-ud-train.conll \
    --dev data/Pruebas/UD/Russian/SynTagRus/ru_syntagrus-ud-dev.conll \
    --test data/Pruebas/UD/Russian/SynTagRus/ru_syntagrus-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Russian/SynTagRus/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Spanish - AnCora
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Spanish/cc.es.300.vec \
    --train data/Pruebas/UD/Spanish/AnCora/es_ancora-ud-train.conll \
    --dev data/Pruebas/UD/Spanish/AnCora/es_ancora-ud-dev.conll \
    --test data/Pruebas/UD/Spanish/AnCora/es_ancora-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Spanish/AnCora/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Spanish - GSD
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Spanish/cc.es.300.vec \
    --train data/Pruebas/UD/Spanish/GSD/es_gsd-ud-train.conll \
    --dev data/Pruebas/UD/Spanish/GSD/es_gsd-ud-dev.conll \
    --test data/Pruebas/UD/Spanish/GSD/es_gsd-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Spanish/GSD/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Tamil - TTB
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Tamil/cc.ta.300.vec \
    --train data/Pruebas/UD/Tamil-TTB/ta_ttb-ud-train.conll \
    --dev data/Pruebas/UD/Tamil-TTB/ta_ttb-ud-dev.conll \
    --test data/Pruebas/UD/Tamil-TTB/ta_ttb-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Tamil-TTB/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Uyghur - UDT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Uyghur/cc.ug.300.vec \
    --train data/Pruebas/UD/Uyghur-UDT/ug_udt-ud-train.conll \
    --dev data/Pruebas/UD/Uyghur-UDT/ug_udt-ud-dev.conll \
    --test data/Pruebas/UD/Uyghur-UDT/ug_udt-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Uyghur-UDT/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Wolof - WTB
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py --mode train --config configs/parsing/l2r_300d.json \
    --num_epochs 600 --batch_size 32 --opt adam --learning_rate 0.001 --lr_decay 0.999997 --beta1 0.9 --beta2 0.9 --eps 1e-4 \
    --grad_clip 5.0 --loss_type token --warmup_steps 40 --reset 20 --weight_decay 0.0 --unk_replace 0.5 --beam 5 --char_embedding random \
    --word_embedding ud \
    --word_path data/Pruebas/Embeddings/Wolof/wo.vectors \
    --train data/Pruebas/UD/Wolof-WTB/wo_wtb-ud-train.conll \
    --dev data/Pruebas/UD/Wolof-WTB/wo_wtb-ud-dev.conll \
    --test data/Pruebas/UD/Wolof-WTB/wo_wtb-ud-test.conll \
    --model_path trained_models/Pruebas/UD/Wolof-WTB/Iteracion_"$index"
done
