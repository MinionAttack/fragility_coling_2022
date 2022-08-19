#!/usr/bin/env bash

source ./venv/bin/activate

# Arabic - PADT
printf "# Arabic - PADT: %s\n" "Train"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Arabic-PADT/ar_padt-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Arabic-PADT/ar_padt-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "# Arabic - PADT: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Arabic-PADT/ar_padt-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Arabic-PADT/ar_padt-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "# Arabic - PADT: %s\n" "Test"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Arabic-PADT/ar_padt-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Arabic-PADT/ar_padt-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "# Arabic - PADT: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Arabic-PADT/ar_padt-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Arabic-PADT/ar_padt-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Basque - BDT
printf "# Basque - BDT: %s\n" "Train"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Basque-BDT/eu_bdt-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Basque-BDT/eu_bdt-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "# Basque - BDT: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Basque-BDT/eu_bdt-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Basque-BDT/eu_bdt-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "# Basque - BDT: %s\n" "Test"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Basque-BDT/eu_bdt-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Basque-BDT/eu_bdt-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "# Basque - BDT: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Basque-BDT/eu_bdt-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Basque-BDT/eu_bdt-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Japanese - GSD
printf "# Japanese - GSD: %s\n" "Train"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Japanese-GSD/ja_gsd-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Japanese-GSD/ja_gsd-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "# Japanese - GSD: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Japanese-GSD/ja_gsd-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Japanese-GSD/ja_gsd-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "# Japanese - GSD: %s\n" "Test"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Japanese-GSD/ja_gsd-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Japanese-GSD/ja_gsd-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "# Japanese - GSD: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Japanese-GSD/ja_gsd-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Japanese-GSD/ja_gsd-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Korean - GSD
printf "# Korean - GSD: %s\n" "Train"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Korean/GSD/ko_gsd-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Korean/GSD/ko_gsd-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "# Korean - GSD: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Korean/GSD/ko_gsd-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Korean/GSD/ko_gsd-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "# Korean - GSD: %s\n" "Test"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Korean/GSD/ko_gsd-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Korean/GSD/ko_gsd-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "# Korean - GSD: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Korean/GSD/ko_gsd-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Korean/GSD/ko_gsd-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Korean - Kaist
printf "# Korean - Kaist: %s\n" "Train"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Korean/Kaist/ko_kaist-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Korean/Kaist/ko_kaist-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "# Korean - Kaist: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Korean/Kaist/ko_kaist-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Korean/Kaist/ko_kaist-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "# Korean - Kaist: %s\n" "Test"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Korean/Kaist/ko_kaist-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Korean/Kaist/ko_kaist-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "# Korean - Kaist: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Korean/Kaist/ko_kaist-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Korean/Kaist/ko_kaist-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Turkish - IMST
printf "# Turkish - IMST: %s\n" "Train"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Turkish-IMST/tr_imst-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Turkish-IMST/tr_imst-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "# Turkish - IMST: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Turkish-IMST/tr_imst-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Turkish-IMST/tr_imst-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "# Turkish - IMST: %s\n" "Test"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Turkish-IMST/tr_imst-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Turkish-IMST/tr_imst-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "# Turkish - IMST: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/media/iago/Seagate Portable Drive/SuPar/data/Pruebas/Kulmiez_SmithEtAl/Turkish-IMST/tr_imst-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/Kulmiez_SmithEtAl/Turkish-IMST/tr_imst-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"
