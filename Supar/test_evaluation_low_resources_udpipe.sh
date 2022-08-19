#!/usr/bin/env bash

source ./env/bin/activate

# Belarusian - HSE
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/LowResources/Belarusian-HSE/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/LowResources/Belarusian-HSE/be_hse-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Galician - TreeGal
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/LowResources/Galician-TreeGal/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/LowResources/Galician-TreeGal/gl_treegal-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Lithuanian - HSE
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/LowResources/Lithuanian-HSE/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/LowResources/Lithuanian-HSE/lt_hse-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Marathi - UFAL
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/LowResources/Marathi-UFAL/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/LowResources/Marathi-UFAL/mr_ufal-ud-test_udpipe.conll \
    --punct --tree
done

