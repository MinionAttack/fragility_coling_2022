#!/usr/bin/env bash

# Treebanks
declare -a treebanks=('Coptic-Scriptorium' 'Indonesian-GSD' 'Old_Church_Slavonic-PROIEL' 'Polish-PDB')

# Treebanks files
declare -a treebank_files=('cop_scriptorium' 'id_gsd' 'cu_proiel' 'pl_pdb')

for language in {0..3}; do
  for experiment in {1..3}; do
      printf "Measuring scores: %s - %s - Experiment %d \n\n" "${treebanks[language]}" "${treebank_files[language]}" "$experiment"
      python3 conll18_ud_eval.py -v \
      Gold_SchluterEtAl_UDPipe/SyntacticPointer/"${treebanks[language]}"/"${treebank_files[language]}"-ud-test.conll \
      Predicted_SchluterEtAl_UDPipe/SyntacticPointer/"${treebanks[language]}"/"${treebank_files[language]}"-iteracion_"$experiment"-predicted-test.conll
      printf "\n"
  done
done