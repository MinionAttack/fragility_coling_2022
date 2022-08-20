#!/usr/bin/env bash

source ./venv/bin/activate

user="your_user_name"

# Greek - GDT
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/ControlSet/Greek-GDT/el_gdt-ud-test.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/ControlSet/Greek-GDT/el_gdt-ud-test.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/ControlSet/Greek-GDT/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/ControlSet/Greek-GDT/Iteracion_"$index"/el_gdt-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/ControlSet/Greek-GDT/Iteracion_"$index"/decode.log
done

# Hindi - HDTB
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/ControlSet/Hindi-HDTB/hi_hdtb-ud-test.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/ControlSet/Hindi-HDTB/hi_hdtb-ud-test.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/ControlSet/Hindi-HDTB/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/ControlSet/Hindi-HDTB/Iteracion_"$index"/hi_hdtb-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/ControlSet/Hindi-HDTB/Iteracion_"$index"/decode.log
done

# Polish - LFG
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/ControlSet/Polish-LFG/pl_lfg-ud-test.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/ControlSet/Polish-LFG/pl_lfg-ud-test.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/ControlSet/Polish-LFG/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/ControlSet/Polish-LFG/Iteracion_"$index"/pl_lfg-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/ControlSet/Polish-LFG/Iteracion_"$index"/decode.log
done

# Slovak - SNK
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/ControlSet/Slovak-SNK/sk_snk-ud-test.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/ControlSet/Slovak-SNK/sk_snk-ud-test.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/ControlSet/Slovak-SNK/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/ControlSet/Slovak-SNK/Iteracion_"$index"/sk_snk-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/ControlSet/Slovak-SNK/Iteracion_"$index"/decode.log
done

# Slovenian - SSJ
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/ControlSet/Slovenian-SSJ/sl_ssj-ud-test.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/ControlSet/Slovenian-SSJ/sl_ssj-ud-test.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/ControlSet/Slovenian-SSJ/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/ControlSet/Slovenian-SSJ/Iteracion_"$index"/sl_ssj-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/ControlSet/Slovenian-SSJ/Iteracion_"$index"/decode.log
done

# Swedish - Talbanken
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/ControlSet/Swedish-Talbanken/sv_talbanken-ud-test.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/ControlSet/Swedish-Talbanken/sv_talbanken-ud-test.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/ControlSet/Swedish-Talbanken/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/ControlSet/Swedish-Talbanken/Iteracion_"$index"/sv_talbanken-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/ControlSet/Swedish-Talbanken/Iteracion_"$index"/decode.log
done
