#!/usr/bin/env bash

source ./venv/bin/activate

# Belarusian - HSE
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/LowResources/Belarusian-HSE/be_hse-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/LowResources/Belarusian-HSE/be_hse-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Belarusian-HSE/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Belarusian-HSE/Iteracion_"$index"/be_hse-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Belarusian-HSE/Iteracion_"$index"/decode.log
done

# Galician - TreeGal
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/LowResources/Galician-TreeGal/gl_treegal-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/LowResources/Galician-TreeGal/gl_treegal-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Galician-TreeGal/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Galician-TreeGal/Iteracion_"$index"/gl_treegal-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Galician-TreeGal/Iteracion_"$index"/decode.log
done

# Lithuanian - HSE
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/LowResources/Lithuanian-HSE/lt_hse-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/LowResources/Lithuanian-HSE/lt_hse-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Lithuanian-HSE/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Lithuanian-HSE/Iteracion_"$index"/lt_hse-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Lithuanian-HSE/Iteracion_"$index"/decode.log
done

# Marathi - UFAL
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/LowResources/Marathi-UFAL/mr_ufal-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/LowResources/Marathi-UFAL/mr_ufal-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Marathi-UFAL/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Marathi-UFAL/Iteracion_"$index"/mr_ufal-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Marathi-UFAL/Iteracion_"$index"/decode.log
done

# Old_Russian - RNC
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/LowResources/Old_Russian-RNC/orv_rnc-ud-test-light.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/LowResources/Old_Russian-RNC/orv_rnc-ud-test-light.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Old_Russian-RNC/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Old_Russian-RNC/Iteracion_"$index"/orv_rnc-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Old_Russian-RNC/Iteracion_"$index"/decode.log
done

# Welsh - CCG
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/LowResources/Welsh-CCG/cy_ccg-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/LowResources/Welsh-CCG/cy_ccg-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Welsh-CCG/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Welsh-CCG/Iteracion_"$index"/cy_ccg-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Welsh-CCG/Iteracion_"$index"/decode.log
done
