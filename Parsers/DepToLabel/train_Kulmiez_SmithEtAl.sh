#!/usr/bin/env bash

source ./venv/bin/activate

user="your_user_name"

# Arabic - PADT
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/Kulmiez_SmithEtAl/Arabic-PADT/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/Kulmiez_SmithEtAl/Arabic-PADT/Iteracion_"$index"/train.log
done

# Basque - BDT
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/Kulmiez_SmithEtAl/Basque-BDT/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/Kulmiez_SmithEtAl/Basque-BDT/Iteracion_"$index"/train.log
done

# Japanese - GSD
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/Kulmiez_SmithEtAl/Japanese-GSD/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/Kulmiez_SmithEtAl/Japanese-GSD/Iteracion_"$index"/train.log
done

# Korean - GSD
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/Kulmiez_SmithEtAl/Korean/GSD/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/Kulmiez_SmithEtAl/Korean/GSD/Iteracion_"$index"/train.log
done

# Korean - Kaist
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/Kulmiez_SmithEtAl/Korean/Kaist/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/Kulmiez_SmithEtAl/Korean/Kaist/Iteracion_"$index"/train.log
done

# Turkish - IMST
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/Kulmiez_SmithEtAl/Turkish-IMST/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/Kulmiez_SmithEtAl/Turkish-IMST/Iteracion_"$index"/train.log
done
