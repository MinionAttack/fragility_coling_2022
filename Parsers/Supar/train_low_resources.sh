#!/usr/bin/env bash

source ./env/bin/activate

# Belarusian - HSE
for index in {1..3}; do
  python -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Belarusian/cc.be.300.vec \
    --train data/Pruebas/LowResources/Belarusian-HSE/be_hse-ud-train.conll \
    --dev data/Pruebas/LowResources/Belarusian-HSE/be_hse-ud-dev.conll \
    --test data/Pruebas/LowResources/Belarusian-HSE/be_hse-ud-test.conll \
    --path models/Pruebas_Punct/LowResources/Belarusian-HSE/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Galician - TreeGal
for index in {1..3}; do
  python -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Galician/cc.gl.300.vec \
    --train data/Pruebas/LowResources/Galician-TreeGal/gl_treegal-ud-train.conll \
    --dev data/Pruebas/LowResources/Galician-TreeGal/gl_treegal-ud-dev.conll \
    --test data/Pruebas/LowResources/Galician-TreeGal/gl_treegal-ud-test.conll \
    --path models/Pruebas_Punct/LowResources/Galician-TreeGal/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Lithuanian - HSE
for index in {1..3}; do
  python -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Lithuanian/cc.lt.300.vec \
    --train data/Pruebas/LowResources/Lithuanian-HSE/lt_hse-ud-train.conll \
    --dev data/Pruebas/LowResources/Lithuanian-HSE/lt_hse-ud-dev.conll \
    --test data/Pruebas/LowResources/Lithuanian-HSE/lt_hse-ud-test.conll \
    --path models/Pruebas_Punct/LowResources/Lithuanian-HSE/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Marathi - UFAL
for index in {1..3}; do
  python -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Marathi/cc.mr.300.vec \
    --train data/Pruebas/LowResources/Marathi-UFAL/mr_ufal-ud-train.conll \
    --dev data/Pruebas/LowResources/Marathi-UFAL/mr_ufal-ud-dev.conll \
    --test data/Pruebas/LowResources/Marathi-UFAL/mr_ufal-ud-test.conll \
    --path models/Pruebas_Punct/LowResources/Marathi-UFAL/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Old_Russian - RNC
for index in {1..3}; do
  python -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Old_Russian/cc.orv.300.vec \
    --train data/Pruebas/LowResources/Old_Russian-RNC/orv_rnc-ud-train.conll \
    --dev data/Pruebas/LowResources/Old_Russian-RNC/orv_rnc-ud-dev.conll \
    --test data/Pruebas/LowResources/Old_Russian-RNC/orv_rnc-ud-test.conll \
    --path models/Pruebas_Punct/LowResources/Old_Russian-RNC/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Welsh - CCG
for index in {1..3}; do
  python -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Welsh/cc.cy.300.vec \
    --train data/Pruebas/LowResources/Welsh-CCG/cy_ccg-ud-train.conll \
    --dev data/Pruebas/LowResources/Welsh-CCG/cy_ccg-ud-dev.conll \
    --test data/Pruebas/LowResources/Welsh-CCG/cy_ccg-ud-test.conll \
    --path models/Pruebas_Punct/LowResources/Welsh-CCG/Iteracion_"$index"
done
