#!/usr/bin/env bash

source ./venv/bin/activate

# Greek - GDT
for index in {1..3}; do
  python main.py --config /home/iago/Escritorio/DepToLabel/trained_models/ControlSet/Greek-GDT/Iteracion_"$index"/train.config |
    tee /home/iago/Escritorio/DepToLabel/trained_models/ControlSet/Greek-GDT/Iteracion_"$index"/train.log
done

# Hindi - HDTB
for index in {1..3}; do
  python main.py --config /home/iago/Escritorio/DepToLabel/trained_models/ControlSet/Hindi-HDTB/Iteracion_"$index"/train.config |
    tee /home/iago/Escritorio/DepToLabel/trained_models/ControlSet/Hindi-HDTB/Iteracion_"$index"/train.log
done

# Polish - LFG
for index in {1..3}; do
  python main.py --config /home/iago/Escritorio/DepToLabel/trained_models/ControlSet/Polish-LFG/Iteracion_"$index"/train.config |
    tee /home/iago/Escritorio/DepToLabel/trained_models/ControlSet/Polish-LFG/Iteracion_"$index"/train.log
done

# Slovak - SNK
for index in {1..3}; do
  python main.py --config /home/iago/Escritorio/DepToLabel/trained_models/ControlSet/Slovak-SNK/Iteracion_"$index"/train.config |
    tee /home/iago/Escritorio/DepToLabel/trained_models/ControlSet/Slovak-SNK/Iteracion_"$index"/train.log
done

# Slovenian - SSJ
for index in {1..3}; do
  python main.py --config /home/iago/Escritorio/DepToLabel/trained_models/ControlSet/Slovenian-SSJ/Iteracion_"$index"/train.config |
    tee /home/iago/Escritorio/DepToLabel/trained_models/ControlSet/Slovenian-SSJ/Iteracion_"$index"/train.log
done

# Swedish - Talbanken
for index in {1..3}; do
  python main.py --config /home/iago/Escritorio/DepToLabel/trained_models/ControlSet/Swedish-Talbanken/Iteracion_"$index"/train.config |
    tee /home/iago/Escritorio/DepToLabel/trained_models/ControlSet/Swedish-Talbanken/Iteracion_"$index"/train.log
done
