#!/usr/bin/env bash

source ./venv/bin/activate

# Arabic - PADT
for index in {1..3}; do
  python3 -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Arabic/cc.ar.300.vec \
    --train data/Pruebas/Kulmiez_SmithEtAl/Arabic-PADT/ar_padt-ud-train.conll \
    --dev data/Pruebas/Kulmiez_SmithEtAl/Arabic-PADT/ar_padt-ud-dev.conll \
    --test data/Pruebas/Kulmiez_SmithEtAl/Arabic-PADT/ar_padt-ud-test.conll \
    --path models/Pruebas_Punct/Kulmiez_SmithEtAl/Arabic-PADT/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Basque - BDT
for index in {1..3}; do
  python3 -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Basque/cc.eu.300.vec \
    --train data/Pruebas/Kulmiez_SmithEtAl/Basque-BDT/eu_bdt-ud-train.conll \
    --dev data/Pruebas/Kulmiez_SmithEtAl/Basque-BDT/eu_bdt-ud-dev.conll \
    --test data/Pruebas/Kulmiez_SmithEtAl/Basque-BDT/eu_bdt-ud-test.conll \
    --path models/Pruebas_Punct/Kulmiez_SmithEtAl/Basque-BDT/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Japanese - GSD
for index in {1..3}; do
  python3 -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Japanese/cc.ja.300.vec \
    --train data/Pruebas/Kulmiez_SmithEtAl/Japanese-GSD/ja_gsd-ud-train.conll \
    --dev data/Pruebas/Kulmiez_SmithEtAl/Japanese-GSD/ja_gsd-ud-dev.conll \
    --test data/Pruebas/Kulmiez_SmithEtAl/Japanese-GSD/ja_gsd-ud-test.conll \
    --path models/Pruebas_Punct/Kulmiez_SmithEtAl/Japanese-GSD/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Korean - GSD
for index in {1..3}; do
  python3 -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Korean/cc.ko.300.vec \
    --train data/Pruebas/Kulmiez_SmithEtAl/Korean/GSD/ko_gsd-ud-train.conll \
    --dev data/Pruebas/Kulmiez_SmithEtAl/Korean/GSD/ko_gsd-ud-dev.conll \
    --test data/Pruebas/Kulmiez_SmithEtAl/Korean/GSD/ko_gsd-ud-test.conll \
    --path models/Pruebas_Punct/Kulmiez_SmithEtAl/Korean/GSD/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Korean - Kaist
for index in {1..3}; do
  python3 -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Korean/cc.ko.300.vec \
    --train data/Pruebas/Kulmiez_SmithEtAl/Korean/Kaist/ko_kaist-ud-train.conll \
    --dev data/Pruebas/Kulmiez_SmithEtAl/Korean/Kaist/ko_kaist-ud-dev.conll \
    --test data/Pruebas/Kulmiez_SmithEtAl/Korean/Kaist/ko_kaist-ud-test.conll \
    --path models/Pruebas_Punct/Kulmiez_SmithEtAl/Korean/Kaist/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Turkish - IMST
for index in {1..3}; do
  python3 -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Turkish/cc.tr.300.vec \
    --train data/Pruebas/Kulmiez_SmithEtAl/Turkish-IMST/tr_imst-ud-train.conll \
    --dev data/Pruebas/Kulmiez_SmithEtAl/Turkish-IMST/tr_imst-ud-dev.conll \
    --test data/Pruebas/Kulmiez_SmithEtAl/Turkish-IMST/tr_imst-ud-test.conll \
    --path models/Pruebas_Punct/Kulmiez_SmithEtAl/Turkish-IMST/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"
