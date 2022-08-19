#!/usr/bin/env bash

source ./venv/bin/activate

# Belarusian - HSE
for index in {1..3}; do
  python main.py --config /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Belarusian-HSE/Iteracion_"$index"/train.config |
    tee /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Belarusian-HSE/Iteracion_"$index"/train.log
done

# Galician - TreeGal
for index in {1..3}; do
  python main.py --config /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Galician-TreeGal/Iteracion_"$index"/train.config |
    tee /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Galician-TreeGal/Iteracion_"$index"/train.log
done

# Lithuanian - HSE
for index in {1..3}; do
  python main.py --config /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Lithuanian-HSE/Iteracion_"$index"/train.config |
    tee /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Lithuanian-HSE/Iteracion_"$index"/train.log
done

# Marathi - UFAL
for index in {1..3}; do
  python main.py --config /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Marathi-UFAL/Iteracion_"$index"/train.config |
    tee /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Marathi-UFAL/Iteracion_"$index"/train.log
done

# Old_Russian - RNC
for index in {1..3}; do
  python main.py --config /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Old_Russian-RNC/Iteracion_"$index"/train.config |
    tee /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Old_Russian-RNC/Iteracion_"$index"/train.log
done

# Welsh - CCG
for index in {1..3}; do
  python main.py --config /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Welsh-CCG/Iteracion_"$index"/train.config |
    tee /home/iago/Escritorio/DepToLabel/trained_models/LowResources/Welsh-CCG/Iteracion_"$index"/train.log
done
