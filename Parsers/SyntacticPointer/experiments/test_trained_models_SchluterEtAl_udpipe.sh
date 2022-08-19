#!/usr/bin/env bash


# TODO: CAMBIAR NOMBRE FICHEROS EN EL CÓDIGO PARA NO PISAR LOS DEL UD


source ../venv/bin/activate

# Coptic - Scriptorium
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/SchluterEtAl/Coptic-Scriptorium/Iteracion_"$index" \
    --test data/Pruebas/SchluterEtAl/Coptic-Scriptorium/cop_scriptorium-ud-test_udpipe.conll
done

printf "===================================================================================\n===================================================================================\n"

# Indonesian - GSD
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/SchluterEtAl/Indonesian-GSD/Iteracion_"$index" \
    --test data/Pruebas/SchluterEtAl/Indonesian-GSD/id_gsd-ud-test_udpipe.conll
done

printf "===================================================================================\n===================================================================================\n"

# Old Church Slavonic - PROIEL
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/SchluterEtAl/Old_Church_Slavonic-PROIEL/Iteracion_"$index" \
    --test data/Pruebas/SchluterEtAl/Old_Church_Slavonic-PROIEL/cu_proiel-ud-test_udpipe.conll
done

printf "===================================================================================\n===================================================================================\n"

# Polish - PDB
for index in {1..3}; do
  CUDA_VISIBLE_DEVICES=1 OMP_NUM_THREADS=4 python -W ignore::UserWarning -u parsing.py \
    --mode parse \
    --remove_cycles \
    --beam 5 --batch_size 32 \
    --model_path trained_models/Pruebas/SchluterEtAl/Polish-PDB/Iteracion_"$index" \
    --test data/Pruebas/SchluterEtAl/Polish-PDB/pl_pdb-ud-test_udpipe.conll
done

printf "===================================================================================\n===================================================================================\n"
