#!/usr/bin/env bash

source ./env/bin/activate

# Greek - GDT
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/ControlSet/Greek-GDT/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/ControlSet/Greek-GDT/el_gdt-ud-test_udpipe.conll \
    --pred models/Pruebas_Punct/ControlSet/Greek-GDT/Iteracion_"$index"/el_gdt-predicted_udpipe-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Hindi - HDTB
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/ControlSet/Hindi-HDTB/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/ControlSet/Hindi-HDTB/hi_hdtb-ud-test_udpipe.conll \
    --pred models/Pruebas_Punct/ControlSet/Hindi-HDTB/Iteracion_"$index"/hi_hdtb-predicted_udpipe-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Polish - LFG
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/ControlSet/Polish-LFG/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/ControlSet/Polish-LFG/pl_lfg-ud-test_udpipe.conll \
    --pred models/Pruebas_Punct/ControlSet/Polish-LFG/Iteracion_"$index"/pl_lfg-predicted_udpipe-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Slovak - SNK
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/ControlSet/Slovak-SNK/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/ControlSet/Slovak-SNK/sk_snk-ud-test_udpipe.conll \
    --pred models/Pruebas_Punct/ControlSet/Slovak-SNK/Iteracion_"$index"/sk_snk-predicted_udpipe-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Slovenian - SSJ
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/ControlSet/Slovenian-SSJ/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/ControlSet/Slovenian-SSJ/sl_ssj-ud-test_udpipe.conll \
    --pred models/Pruebas_Punct/ControlSet/Slovenian-SSJ/Iteracion_"$index"/sl_ssj-predicted_udpipe-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Swedish - Talbanken
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/ControlSet/Swedish-Talbanken/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/ControlSet/Swedish-Talbanken/sv_talbanken-ud-test_udpipe.conll \
    --pred models/Pruebas_Punct/ControlSet/Swedish-Talbanken/Iteracion_"$index"/sv_talbanken-predicted_udpipe-test.conll \
    --tree
done
