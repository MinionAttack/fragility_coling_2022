#!/usr/bin/env bash

# Treebanks
declare -a treebanks=('Belarusian-HSE' 'Galician-TreeGal' 'Lithuanian-HSE' 'Marathi-UFAL' 'Old_Russian-RNC' 'Tamil-TTB' 'Welsh-CCG')

# Treebanks files
declare -a treebank_files=('be_hse' 'gl_treegal' 'lt_hse' 'mr_ufal' 'orv_rnc' 'ta_ttb' 'cy_ccg')

for language in {0..6}; do
  for experiment in {1..3}; do
      printf "Measuring scores: %s - %s - Experiment %d \n\n" "${treebanks[language]}" "${treebank_files[language]}" "$experiment"
      python3 conll18_ud_eval.py -v \
      Gold_LowResources/SyntacticPointer/"${treebanks[language]}"/"${treebank_files[language]}"-ud-test.conll \
      Predicted_LowResources/SyntacticPointer/"${treebanks[language]}"/"${treebank_files[language]}"-iteracion_"$experiment"-predicted-test.conll
      printf "\n"
  done
done
