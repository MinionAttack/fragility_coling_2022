#!/usr/bin/env bash

# Treebanks
declare -a treebanks=('Coptic-Scriptorium' 'Indonesian-GSD' 'Old_Church_Slavonic-PROIEL' 'Polish-PDB' 'Sanskrit-Vedic')

# Treebanks files
declare -a treebank_files=('cop_scriptorium' 'id_gsd' 'cu_proiel' 'pl_pdb' 'sa_vedic')

for language in {0..4}; do
  for experiment in {1..3}; do
      printf "Measuring scores: %s - %s - Experiment %d \n\n" "${treebanks[language]}" "${treebank_files[language]}" "$experiment"
      python3 conll18_ud_eval.py -v \
      Gold_SchluterEtAl/SuPar/"${treebanks[language]}"/"${treebank_files[language]}"-ud-test.conll \
      Predicted_SchluterEtAl/SuPar/"${treebanks[language]}"/"${treebank_files[language]}"-iteracion_"$experiment"-predicted-test.conll
      printf "\n"
  done
done
