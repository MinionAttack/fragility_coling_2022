#!/usr/bin/env bash

source ./venv/bin/activate

# Belarusian - HSE
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/LowResources/Belarusian-HSE/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/LowResources/Belarusian-HSE/be_hse-ud-test.conll \
    --pred models/Pruebas_Punct/LowResources/Belarusian-HSE/Iteracion_"$index"/be_hse-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Galician - TreeGal
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/LowResources/Galician-TreeGal/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/LowResources/Galician-TreeGal/gl_treegal-ud-test.conll \
    --pred models/Pruebas_Punct/LowResources/Galician-TreeGal/Iteracion_"$index"/gl_treegal-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Lithuanian - HSE
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/LowResources/Lithuanian-HSE/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/LowResources/Lithuanian-HSE/lt_hse-ud-test.conll \
    --pred models/Pruebas_Punct/LowResources/Lithuanian-HSE/Iteracion_"$index"/lt_hse-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Marathi - UFAL
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/LowResources/Marathi-UFAL/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/LowResources/Marathi-UFAL/mr_ufal-ud-test.conll \
    --pred models/Pruebas_Punct/LowResources/Marathi-UFAL/Iteracion_"$index"/mr_ufal-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Old_Russian - RNC
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/LowResources/Old_Russian-RNC/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/LowResources/Old_Russian-RNC/orv_rnc-ud-test.conll \
    --pred models/Pruebas_Punct/LowResources/Old_Russian-RNC/Iteracion_"$index"/orv_rnc-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Welsh - CCG
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/LowResources/Welsh-CCG/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/LowResources/Welsh-CCG/cy_ccg-ud-test.conll \
    --pred models/Pruebas_Punct/LowResources/Welsh-CCG/Iteracion_"$index"/cy_ccg-predicted-test.conll \
    --tree
done
