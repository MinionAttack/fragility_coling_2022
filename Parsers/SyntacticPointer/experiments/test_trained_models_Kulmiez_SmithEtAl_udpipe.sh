#!/usr/bin/env bash


# TODO: CAMBIAR NOMBRE FICHEROS EN EL CÓDIGO PARA NO PISAR LOS DEL UD


source ../venv/bin/activate

# Arabic - PADT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python3 -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/Kulmiez_SmithEtAl/Arabic-PADT/Iteracion_"$index" \
    --test data/Pruebas/Kulmiez_SmithEtAl/Arabic-PADT/ar_padt-ud-test_udpipe.conll
done

printf "===================================================================================\n===================================================================================\n"

# Basque - BDT
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python3 -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/Kulmiez_SmithEtAl/Basque-BDT/Iteracion_"$index" \
    --test data/Pruebas/Kulmiez_SmithEtAl/Basque-BDT/eu_bdt-ud-test_udpipe.conll
done

printf "===================================================================================\n===================================================================================\n"

# Japanese - GSD
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python3 -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/Kulmiez_SmithEtAl/Japanese-GSD/Iteracion_"$index" \
    --test data/Pruebas/Kulmiez_SmithEtAl/Japanese-GSD/ja_gsd-ud-test_udpipe.conll
done

printf "===================================================================================\n===================================================================================\n"

# Korean - GSD
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python3 -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/Kulmiez_SmithEtAl/Korean/GSD/Iteracion_"$index" \
    --test data/Pruebas/Kulmiez_SmithEtAl/Korean/GSD/ko_gsd-ud-test_udpipe.conll
done

printf "===================================================================================\n===================================================================================\n"

# Korean - Kaist
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python3 -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/Kulmiez_SmithEtAl/Korean/Kaist/Iteracion_"$index" \
    --test data/Pruebas/Kulmiez_SmithEtAl/Korean/Kaist/ko_kaist-ud-test_udpipe.conll
done

printf "===================================================================================\n===================================================================================\n"

# Turkish - IMST
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python3 -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/Kulmiez_SmithEtAl/Turkish-IMST/Iteracion_"$index" \
    --test data/Pruebas/Kulmiez_SmithEtAl/Turkish-IMST/tr-imst-ud-test_udpipe.conll
done

printf "===================================================================================\n===================================================================================\n"
