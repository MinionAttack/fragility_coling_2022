#!/usr/bin/env bash

# Treebanks
declare -a treebanks=('Ancient_Greek-Perseus' 'Ancient_Greek-PROIEL' 'Bulgarian-BTB' 'Catalan-AnCora' 'Chinese-GSD' 'Czech-CAC' 'Czech-CLTT'
'Czech-FicTree' 'Czech-PDT' 'Dutch-Alpino' 'Dutch-LassySmall' 'English-EWT' 'Finish-TDT' 'French-GSD' 'German-GSD' 'Hebrew-HTB'
'Italian-ISDT' 'Kazakh-KTB' 'Norwegian-Bokmaal' 'Norwegian-Nynorsk' 'Romanian-RRT' 'Russian-GSD' 'Russian-SynTagRus' 'Spanish-AnCora'
'Spanish-GSD' 'Tamil-TTB' 'Uyghur-UDT' 'Wolof-WTB')

# Treebanks files
declare -a treebank_files=('grc_perseus' 'grc_proiel' 'bg_btb' 'ca_ancora' 'zh_gsd' 'cs_cac' 'cs_cltt' 'cs_fictree' 'cs_pdt' 'nl_alpino'
'nl_lassysmall' 'en_ewt' 'fi_tdt' 'fr_gsd' 'de_gsd' 'he_htb' 'it_isdt' 'kk_ktb' 'no_bokmaal' 'no_nynorsk' 'ro_rrt' 'ru_gsd' 'ru_syntagrus'
'es_ancora' 'es_gsd' 'ta_ttb' 'ug_udt' 'wo_wtb')

for language in {0..27}; do
  for experiment in {1..3}; do
      printf "Measuring scores: %s - %s - Experiment %d \n\n" "${treebanks[language]}" "${treebank_files[language]}" "$experiment"
      python3 conll18_ud_eval.py -v \
      Gold/SyntacticPointer/"${treebanks[language]}"/"${treebank_files[language]}"-test.conll \
      Predicted/SyntacticPointer/"${treebanks[language]}"/"${treebank_files[language]}"-iteracion_"$experiment"-predicted-test.conll
      printf "\n"
  done
done
