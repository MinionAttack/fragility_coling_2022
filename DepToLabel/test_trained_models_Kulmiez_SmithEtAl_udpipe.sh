#!/usr/bin/env bash

source ./venv/bin/activate

# Arabic - PADT
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Arabic-PADT/ar_padt-ud-test_udpipe.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Arabic-PADT/ar_padt-ud-test_udpipe.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/Kulmiez_SmithEtAl/Arabic-PADT/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/Kulmiez_SmithEtAl/Arabic-PADT/Iteracion_"$index"/ar_padt-predicted-test_udpipe.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/Kulmiez_SmithEtAl/Arabic-PADT/Iteracion_"$index"/decode_udpipe.log
done

# Basque - BDT
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Basque-BDT/eu_bdt-ud-test_udpipe.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Basque-BDT/eu_bdt-ud-test_udpipe.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/Kulmiez_SmithEtAl/Basque-BDT/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/Kulmiez_SmithEtAl/Basque-BDT/Iteracion_"$index"/eu_bdt-predicted-test_udpipe.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/Kulmiez_SmithEtAl/Basque-BDT/Iteracion_"$index"/decode_udpipe.log
done

# Japanese - GSD
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Japanese-GSD/ja_gsd-ud-test_udpipe.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Japanese-GSD/ja_gsd-ud-test_udpipe.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/Kulmiez_SmithEtAl/Japanese-GSD/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/Kulmiez_SmithEtAl/Japanese-GSD/Iteracion_"$index"/ja_gsd-predicted-test_udpipe.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/Kulmiez_SmithEtAl/Japanese-GSD/Iteracion_"$index"/decode_udpipe.log
done

# Korean - GSD
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Korean/GSD/ko_gsd-ud-test_udpipe.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Korean/GSD/ko_gsd-ud-test_udpipe.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/Kulmiez_SmithEtAl/Korean/GSD/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/Kulmiez_SmithEtAl/Korean/GSD/Iteracion_"$index"/ko_gsd-predicted-test_udpipe.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/Kulmiez_SmithEtAl/Korean/GSD/Iteracion_"$index"/decode_udpipe.log
done

# Korean - Kaist
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Korean/Kaist/ko_kaist-ud-test_udpipe.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Korean/Kaist/ko_kaist-ud-test_udpipe.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/Kulmiez_SmithEtAl/Korean/Kaist/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/Kulmiez_SmithEtAl/Korean/Kaist/Iteracion_"$index"/ko_kaist-predicted-test_udpipe.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/Kulmiez_SmithEtAl/Korean/Kaist/Iteracion_"$index"/decode_udpipe.log
done

# Turkish - IMST
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Turkish-IMST/tr_imst-ud-test_udpipe.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Turkish-IMST/tr_imst-ud-test_udpipe.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/Kulmiez_SmithEtAl/Turkish-IMST/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/Kulmiez_SmithEtAl/Turkish-IMST/Iteracion_"$index"/tr_imst-predicted-test_udpipe.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/Kulmiez_SmithEtAl/Turkish-IMST/Iteracion_"$index"/decode_udpipe.log
done
