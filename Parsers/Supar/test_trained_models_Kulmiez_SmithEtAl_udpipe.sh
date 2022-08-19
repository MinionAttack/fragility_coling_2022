#!/usr/bin/env bash

source ./env/bin/activate

# Arabic - PADT
for index in {1..3}; do
  python3 -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/Kulmiez_SmithEtAl/Arabic-PADT/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/Kulmiez_SmithEtAl/Arabic-PADT/ar_padt-ud-test_udpipe.conll \
    --pred models/Pruebas_Punct/Kulmiez_SmithEtAl/Arabic-PADT/Iteracion_"$index"/ar_padt-predicted_udpipe-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Basque - BDT
for index in {1..3}; do
  python3 -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/Kulmiez_SmithEtAl/Basque-BDT/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/Kulmiez_SmithEtAl/Basque-BDT/eu_bdt-ud-test_udpipe.conll \
    --pred models/Pruebas_Punct/Kulmiez_SmithEtAl/Basque-BDT/Iteracion_"$index"/eu_bdt-predicted_udpipe-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Japanese - GSD
for index in {1..3}; do
  python3 -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/Kulmiez_SmithEtAl/Japanese-GSD/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/Kulmiez_SmithEtAl/Japanese-GSD/ja_gsd-ud-test_udpipe.conll \
    --pred models/Pruebas_Punct/Kulmiez_SmithEtAl/Japanese-GSD/Iteracion_"$index"/ja_gsd-predicted_udpipe-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Korean - GSD
for index in {1..3}; do
  python3 -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/Kulmiez_SmithEtAl/Korean/GSD/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/Kulmiez_SmithEtAl/Korean/GSD/ko_gsd-ud-test_udpipe.conll \
    --pred models/Pruebas_Punct/Kulmiez_SmithEtAl/Korean/GSD/Iteracion_"$index"/ko_gsd-predicted_udpipe-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Korean - Kaist
for index in {1..3}; do
  python3 -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/Kulmiez_SmithEtAl/Korean/Kaist/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/Kulmiez_SmithEtAl/Korean/Kaist/ko_kaist-ud-test_udpipe.conll \
    --pred models/Pruebas_Punct/Kulmiez_SmithEtAl/Korean/Kaist/Iteracion_"$index"/ko_kaist-predicted_udpipe-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Turkish - IMST
for index in {1..3}; do
  python3 -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/Kulmiez_SmithEtAl/Turkish-IMST/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/Kulmiez_SmithEtAl/Turkish-IMST/tr_imst-ud-test_udpipe.conll \
    --pred models/Pruebas_Punct/Kulmiez_SmithEtAl/Turkish-IMST/Iteracion_"$index"/tr_imst-predicted_udpipe-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"
