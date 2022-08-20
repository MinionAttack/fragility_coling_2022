#!/usr/bin/env bash

source ./venv/bin/activate

# Greek - GDT
for index in {1..3}; do
  python -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Greek/cc.el.300.vec \
    --train data/Pruebas/ControlSet/Greek-GDT/el_gdt-ud-train.conll \
    --dev data/Pruebas/ControlSet/Greek-GDT/el_gdt-ud-dev.conll \
    --test data/Pruebas/ControlSet/Greek-GDT/el_gdt-ud-test.conll \
    --path models/Pruebas_Punct/ControlSet/Greek-GDT/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Hindi - HDTB
for index in {1..3}; do
  python -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Hindi/cc.hi.300.vec \
    --train data/Pruebas/ControlSet/Hindi-HDTB/hi_hdtb-ud-train.conll \
    --dev data/Pruebas/ControlSet/Hindi-HDTB/hi_hdtb-ud-dev.conll \
    --test data/Pruebas/ControlSet/Hindi-HDTB/hi_hdtb-ud-test.conll \
    --path models/Pruebas_Punct/ControlSet/Hindi-HDTB/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Polish - LFG
for index in {1..3}; do
  python -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Polish/cc.pl.300.vec \
    --train data/Pruebas/ControlSet/Polish-LFG/pl_lfg-ud-train.conll \
    --dev data/Pruebas/ControlSet/Polish-LFG/pl_lfg-ud-dev.conll \
    --test data/Pruebas/ControlSet/Polish-LFG/pl_lfg-ud-test.conll \
    --path models/Pruebas_Punct/ControlSet/Polish-LFG/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Slovak - SNK
for index in {1..3}; do
  python -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Slovak/cc.sk.300.vec \
    --train data/Pruebas/ControlSet/Slovak-SNK/sk_snk-ud-train.conll \
    --dev data/Pruebas/ControlSet/Slovak-SNK/sk_snk-ud-dev.conll \
    --test data/Pruebas/ControlSet/Slovak-SNK/sk_snk-ud-test.conll \
    --path models/Pruebas_Punct/ControlSet/Slovak-SNK/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Slovenian - SSJ
for index in {1..3}; do
  python -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Slovenian/cc.sl.300.vec \
    --train data/Pruebas/ControlSet/Slovenian-SSJ/sl_ssj-ud-train.conll \
    --dev data/Pruebas/ControlSet/Slovenian-SSJ/sl_ssj-ud-dev.conll \
    --test data/Pruebas/ControlSet/Slovenian-SSJ/sl_ssj-ud-test.conll \
    --path models/Pruebas_Punct/ControlSet/Slovenian-SSJ/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Swedish - Talbanken
for index in {1..3}; do
  python -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Swedish/cc.sv.300.vec \
    --train data/Pruebas/ControlSet/Swedish-Talbanken/sv_talbanken-ud-train.conll \
    --dev data/Pruebas/ControlSet/Swedish-Talbanken/sv_talbanken-ud-dev.conll \
    --test data/Pruebas/ControlSet/Swedish-Talbanken/sv_talbanken-ud-test.conll \
    --path models/Pruebas_Punct/ControlSet/Swedish-Talbanken/Iteracion_"$index"
done
