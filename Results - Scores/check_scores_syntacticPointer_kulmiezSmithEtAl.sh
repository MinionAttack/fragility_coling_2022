#!/usr/bin/env bash

# Treebanks
declare -a treebanks=('Arabic-PADT' 'Basque-BDT' 'Japanese-GSD' 'Korean-GSD' 'Korean-Kaist' 'Turkish-IMST')

# Treebanks files
declare -a treebank_files=('ar_padt' 'eu_bdt' 'ja_gsd' 'ko_gsd' 'ko_kaist' 'tr_imst')

for language in {0..5}; do
  for experiment in {1..3}; do
      printf "Measuring scores: %s - %s - Experiment %d \n\n" "${treebanks[language]}" "${treebank_files[language]}" "$experiment"
      python3 conll18_ud_eval.py -v \
      Gold_Kulmiez_SmithEtAl/SyntacticPointer/"${treebanks[language]}"/"${treebank_files[language]}"-ud-test.conll \
      Predicted_Kulmiez_SmithEtAl/SyntacticPointer/"${treebanks[language]}"/"${treebank_files[language]}"-iteracion_"$experiment"-predicted-test.conll
      printf "\n"
  done
done
