#!/usr/bin/env bash

# Treebanks
declare -a treebanks=('Greek-GDT' 'Hindi-HDTB' 'Polish-LFG' 'Slovak-SNK' 'Slovenian-SSJ' 'Swedish-Talbanken')

# Treebanks files
declare -a treebank_files=('el_gdt' 'hi_hdtb' 'pl_lfg' 'sk_snk' 'sl_ssj' 'sv_talbanken')

for language in {0..5}; do
  for experiment in {1..3}; do
      printf "Measuring scores: %s - %s - Experiment %d \n\n" "${treebanks[language]}" "${treebank_files[language]}" "$experiment"
      python3 conll18_ud_eval.py -v \
      Gold_ControlSet_UDPipe/SuPar/"${treebanks[language]}"/"${treebank_files[language]}"-ud-test.conll \
      Predicted_ControlSet_UDPipe/SuPar/"${treebanks[language]}"/"${treebank_files[language]}"-iteracion_"$experiment"-predicted-test.conll
      printf "\n"
  done
done
