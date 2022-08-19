#!/usr/bin/env bash

source ../venv/bin/activate

# Ancient_Greek - Perseus
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Ancient_Greek/Perseus/Iteracion_"$index" \
    --test data/Pruebas/UD/Ancient_Greek/Perseus/grc_perseus-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Ancient_Greek - PROIEL
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Ancient_Greek/PROIEL/Iteracion_"$index" \
    --test data/Pruebas/UD/Ancient_Greek/PROIEL/grc_proiel-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Bulgarian - BTB
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Bulgarian-BTB/Iteracion_"$index" \
    --test data/Pruebas/UD/Bulgarian-BTB/bg_btb-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Catalan - AnCora
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Catalan-AnCora/Iteracion_"$index" \
    --test data/Pruebas/UD/Catalan-AnCora/ca_ancora-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Chinese - GSD
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Chinese-GSD/Iteracion_"$index" \
    --test data/Pruebas/UD/Chinese-GSD/zh_gsd-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Czech - CAC
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Czech/CAC/Iteracion_"$index" \
    --test data/Pruebas/UD/Czech/CAC/cs_cac-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Czech - CLTT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Czech/CLTT/Iteracion_"$index" \
    --test data/Pruebas/UD/Czech/CLTT/cs_cltt-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Czech - FicTree
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Czech/FicTree/Iteracion_"$index" \
    --test data/Pruebas/UD/Czech/FicTree/cs_fictree-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Czech - PDT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Czech/PDT/Iteracion_"$index" \
    --test data/Pruebas/UD/Czech/PDT/cs_pdt-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Dutch - Alpino
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Dutch/Alpino/Iteracion_"$index" \
    --test data/Pruebas/UD/Dutch/Alpino/nl_alpino-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Dutch - LassySmall
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Dutch/LassySmall/Iteracion_"$index" \
    --test data/Pruebas/UD/Dutch/LassySmall/nl_lassysmall-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# English - EWT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/English-EWT/Iteracion_"$index" \
    --test data/Pruebas/UD/English-EWT/en_ewt-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Finnish - TDT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Finnish-TDT/Iteracion_"$index" \
    --test data/Pruebas/UD/Finnish-TDT/fi_tdt-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# French - GSD
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/French-GSD/Iteracion_"$index" \
    --test data/Pruebas/UD/French-GSD/fr_gsd-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# German - GSD
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/German-GSD/Iteracion_"$index" \
    --test data/Pruebas/UD/German-GSD/de_gsd-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Hebrew - HTB
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Hebrew-HTB/Iteracion_"$index" \
    --test data/Pruebas/UD/Hebrew-HTB/he_htb-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Italian - ISDT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Italian-ISDT/Iteracion_"$index" \
    --test data/Pruebas/UD/Italian-ISDT/it_isdt-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Kazakh - KTB
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Kazakh-KTB/Iteracion_"$index" \
    --test data/Pruebas/UD/Kazakh-KTB/kk_ktb-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Norwegian - Bokmaal
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Norwegian/Bokmaal/Iteracion_"$index" \
    --test data/Pruebas/UD/Norwegian/Bokmaal/no_bokmaal-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Norwegian - Nynorsk
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Norwegian/Nynorsk/Iteracion_"$index" \
    --test data/Pruebas/UD/Norwegian/Nynorsk/no_nynorsk-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Romanian - RRT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Romanian-RRT/Iteracion_"$index" \
    --test data/Pruebas/UD/Romanian-RRT/ro_rrt-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Russian - GSD
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Russian/GSD/Iteracion_"$index" \
    --test data/Pruebas/UD/Russian/GSD/ru_gsd-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Russian - SynTagRus
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Russian/SynTagRus/Iteracion_"$index" \
    --test data/Pruebas/UD/Russian/SynTagRus/ru_syntagrus-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Spanish - AnCora
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Spanish/AnCora/Iteracion_"$index" \
    --test data/Pruebas/UD/Spanish/AnCora/es_ancora-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Spanish - GSD
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Spanish/GSD/Iteracion_"$index" \
    --test data/Pruebas/UD/Spanish/GSD/es_gsd-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Tamil - TTB
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Tamil-TTB/Iteracion_"$index" \
    --test data/Pruebas/UD/Tamil-TTB/ta_ttb-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Uyghur - UDT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Uyghur-UDT/Iteracion_"$index" \
    --test data/Pruebas/UD/Uyghur-UDT/ug_udt-ud-test.conll
done

printf "===================================================================================\n===================================================================================\n"

# Wolof - WTB
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/UD/Wolof-WTB/Iteracion_"$index" \
    --test data/Pruebas/UD/Wolof-WTB/wo_wtb-ud-test.conll
done
