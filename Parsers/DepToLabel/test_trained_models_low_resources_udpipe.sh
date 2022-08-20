#!/usr/bin/env bash

source ./venv/bin/activate

user="your_user_name"

# Belarusian - HSE
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/LowResources/Belarusian-HSE/be_hse-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/LowResources/Belarusian-HSE/be_hse-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/LowResources/Belarusian-HSE/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/LowResources/Belarusian-HSE/Iteracion_"$index"/be_hse-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/LowResources/Belarusian-HSE/Iteracion_"$index"/decode_udpipe.log
done

# Galician - TreeGal
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/LowResources/Galician-TreeGal/gl_treegal-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/LowResources/Galician-TreeGal/gl_treegal-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/LowResources/Galician-TreeGal/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/LowResources/Galician-TreeGal/Iteracion_"$index"/gl_treegal-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/LowResources/Galician-TreeGal/Iteracion_"$index"/decode_udpipe.log
done

# Lithuanian - HSE
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/LowResources/Lithuanian-HSE/lt_hse-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/LowResources/Lithuanian-HSE/lt_hse-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/LowResources/Lithuanian-HSE/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/LowResources/Lithuanian-HSE/Iteracion_"$index"/lt_hse-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/LowResources/Lithuanian-HSE/Iteracion_"$index"/decode_udpipe.log
done

# Marathi - UFAL
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/LowResources/Marathi-UFAL/mr_ufal-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/LowResources/Marathi-UFAL/mr_ufal-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/LowResources/Marathi-UFAL/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/LowResources/Marathi-UFAL/Iteracion_"$index"/mr_ufal-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/LowResources/Marathi-UFAL/Iteracion_"$index"/decode_udpipe.log
done

# Tamil - TTB
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Tamil-TTB/ta_ttb-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Tamil-TTB/ta_ttb-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Tamil-TTB/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Tamil-TTB/Iteracion_"$index"/ta_ttb-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Tamil-TTB/Iteracion_"$index"/decode_udpipe.log
done
