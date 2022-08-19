#!/usr/bin/env bash

source ./venv/bin/activate

# Coptic - Scriptorium
for index in {1..3}; do
  python main.py --config /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Coptic-Scriptorium/Iteracion_"$index"/train.config |
    tee /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Coptic-Scriptorium/Iteracion_"$index"/train.log
done

# Indonesian - GSD
for index in {1..3}; do
  python main.py --config /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Indonesian-GSD/Iteracion_"$index"/train.config |
    tee /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Indonesian-GSD/Iteracion_"$index"/train.log
done

# Old Church Slavonic - PROIEL
for index in {1..3}; do
  python main.py --config /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Old_Church_Slavonic-PROIEL/Iteracion_"$index"/train.config |
    tee /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Old_Church_Slavonic-PROIEL/Iteracion_"$index"/train.log
done

# Polish - PDB
for index in {1..3}; do
  python main.py --config /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Polish-PDB/Iteracion_"$index"/train.config |
    tee /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Polish-PDB/Iteracion_"$index"/train.log
done

# Sanskrit - Vedic
for index in {1..3}; do
  python main.py --config /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Sanskrit-Vedic/Iteracion_"$index"/train.config |
    tee /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Sanskrit-Vedic/Iteracion_"$index"/train.log
done
