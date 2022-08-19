#!/usr/bin/env bash

source ./venv/bin/activate

######
# UD #
######

# Ancient_Greek - Perseus
printf "Ancient_Greek - Perseus: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Ancient_Greek/Perseus/grc_perseus-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Ancient_Greek/Perseus/grc_perseus-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Ancient_Greek - Perseus: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Ancient_Greek/Perseus/grc_perseus-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Ancient_Greek/Perseus/grc_perseus-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Ancient_Greek - Perseus: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Ancient_Greek/Perseus/grc_perseus-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Ancient_Greek/Perseus/grc_perseus-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Ancient_Greek - Perseus: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Ancient_Greek/Perseus/grc_perseus-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Ancient_Greek/Perseus/grc_perseus-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Ancient_Greek - PROIEL
printf "Ancient_Greek - PROIEL: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Ancient_Greek/PROIEL/grc_proiel-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Ancient_Greek/PROIEL/grc_proiel-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Ancient_Greek - PROIEL: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Ancient_Greek/PROIEL/grc_proiel-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Ancient_Greek/PROIEL/grc_proiel-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Ancient_Greek - PROIEL: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Ancient_Greek/PROIEL/grc_proiel-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Ancient_Greek/PROIEL/grc_proiel-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Ancient_Greek - PROIEL: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Ancient_Greek/PROIEL/grc_proiel-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Ancient_Greek/PROIEL/grc_proiel-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Bulgarian - BTB
printf "Bulgarian - BTB: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Bulgarian-BTB/bg_btb-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Bulgarian-BTB/bg_btb-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Bulgarian - BTB: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Bulgarian-BTB/bg_btb-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Bulgarian-BTB/bg_btb-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Bulgarian - BTB: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Bulgarian-BTB/bg_btb-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Bulgarian-BTB/bg_btb-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Bulgarian - BTB: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Bulgarian-BTB/bg_btb-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Bulgarian-BTB/bg_btb-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Catalan - AnCora
printf "Catalan - AnCora: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Catalan-AnCora/ca_ancora-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Catalan-AnCora/ca_ancora-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Catalan - AnCora: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Catalan-AnCora/ca_ancora-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Catalan-AnCora/ca_ancora-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Catalan - AnCora: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Catalan-AnCora/ca_ancora-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Catalan-AnCora/ca_ancora-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Catalan - AnCora: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Catalan-AnCora/ca_ancora-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Catalan-AnCora/ca_ancora-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Chinese - GSD
printf "Chinese - GSD: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Chinese-GSD/zh_gsd-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Chinese-GSD/zh_gsd-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Chinese - GSD: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Chinese-GSD/zh_gsd-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Chinese-GSD/zh_gsd-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Chinese - GSD: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Chinese-GSD/zh_gsd-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Chinese-GSD/zh_gsd-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Chinese - GSD: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Chinese-GSD/zh_gsd-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Chinese-GSD/zh_gsd-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Czech - CAC
printf "Czech - CAC: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Czech/CAC/cs_cac-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Czech/CAC/cs_cac-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Czech - CAC: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Czech/CAC/cs_cac-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Czech/CAC/cs_cac-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Czech - CAC: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Czech/CAC/cs_cac-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Czech/CAC/cs_cac-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Czech - CAC: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Czech/CAC/cs_cac-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Czech/CAC/cs_cac-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Czech - CLTT
printf "Czech - CLTT: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Czech/CLTT/cs_cltt-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Czech/CLTT/cs_cltt-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Czech - CLTT: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Czech/CLTT/cs_cltt-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Czech/CLTT/cs_cltt-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Czech - CLTT: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Czech/CLTT/cs_cltt-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Czech/CLTT/cs_cltt-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Czech - CLTT: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Czech/CLTT/cs_cltt-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Czech/CLTT/cs_cltt-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Czech - FicTree
printf "Czech - FicTree: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Czech/FicTree/cs_fictree-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Czech/FicTree/cs_fictree-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Czech - FicTree: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Czech/FicTree/cs_fictree-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Czech/FicTree/cs_fictree-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Czech - FicTree: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Czech/FicTree/cs_fictree-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Czech/FicTree/cs_fictree-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Czech - FicTree: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Czech/FicTree/cs_fictree-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Czech/FicTree/cs_fictree-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Czech - PDT
printf "Czech - PDT: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Czech/PDT/cs_pdt-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Czech/PDT/cs_pdt-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Czech - PDT: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Czech/PDT/cs_pdt-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Czech/PDT/cs_pdt-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Czech - PDT: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Czech/PDT/cs_pdt-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Czech/PDT/cs_pdt-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Czech - PDT: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Czech/PDT/cs_pdt-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Czech/PDT/cs_pdt-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Dutch - Alpino
printf "Dutch - Alpino: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Dutch/Alpino/nl_alpino-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Dutch/Alpino/nl_alpino-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Dutch - Alpino: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Dutch/Alpino/nl_alpino-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Dutch/Alpino/nl_alpino-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Dutch - Alpino: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Dutch/Alpino/nl_alpino-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Dutch/Alpino/nl_alpino-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Dutch - Alpino: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Dutch/Alpino/nl_alpino-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Dutch/Alpino/nl_alpino-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Dutch - LassySmall
printf "Dutch - LassySmall: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Dutch/LassySmall/nl_lassysmall-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Dutch/LassySmall/nl_lassysmall-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Dutch - LassySmall: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Dutch/LassySmall/nl_lassysmall-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Dutch/LassySmall/nl_lassysmall-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Dutch - LassySmall: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Dutch/LassySmall/nl_lassysmall-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Dutch/LassySmall/nl_lassysmall-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Dutch - LassySmall: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Dutch/LassySmall/nl_lassysmall-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Dutch/LassySmall/nl_lassysmall-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# English - EWT
printf "English - EWT: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/English-EWT/en_ewt-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/English-EWT/en_ewt-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "English - EWT: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/English-EWT/en_ewt-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/English-EWT/en_ewt-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "English - EWT: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/English-EWT/en_ewt-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/English-EWT/en_ewt-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "English - EWT: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/English-EWT/en_ewt-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/English-EWT/en_ewt-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Finnish - TDT
printf "Finnish - TDT: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Finnish-TDT/fi_tdt-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Finnish-TDT/fi_tdt-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Finnish - TDT: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Finnish-TDT/fi_tdt-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Finnish-TDT/fi_tdt-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Finnish - TDT: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Finnish-TDT/fi_tdt-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Finnish-TDT/fi_tdt-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Finnish - TDT: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Finnish-TDT/fi_tdt-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Finnish-TDT/fi_tdt-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# French - GSD
printf "French - GSD: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/French-GSD/fr_gsd-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/French-GSD/fr_gsd-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "French - GSD: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/French-GSD/fr_gsd-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/French-GSD/fr_gsd-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "French - GSD: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/French-GSD/fr_gsd-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/French-GSD/fr_gsd-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "French - GSD: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/French-GSD/fr_gsd-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/French-GSD/fr_gsd-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# German - GSD
printf "German - GSD: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/German-GSD/de_gsd-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/German-GSD/de_gsd-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "German - GSD: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/German-GSD/de_gsd-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/German-GSD/de_gsd-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "German - GSD: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/German-GSD/de_gsd-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/German-GSD/de_gsd-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "German - GSD: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/German-GSD/de_gsd-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/German-GSD/de_gsd-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Hebrew - HTB
printf "Hebrew - HTB: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Hebrew-HTB/he_htb-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Hebrew-HTB/he_htb-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Hebrew - HTB: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Hebrew-HTB/he_htb-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Hebrew-HTB/he_htb-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Hebrew - HTB: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Hebrew-HTB/he_htb-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Hebrew-HTB/he_htb-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Hebrew - HTB: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Hebrew-HTB/he_htb-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Hebrew-HTB/he_htb-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Italian - ISDT
printf "Italian - ISDT: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Italian-ISDT/it_isdt-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Italian-ISDT/it_isdt-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Italian - ISDT: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Italian-ISDT/it_isdt-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Italian-ISDT/it_isdt-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Italian - ISDT: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Italian-ISDT/it_isdt-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Italian-ISDT/it_isdt-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Italian - ISDT: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Italian-ISDT/it_isdt-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Italian-ISDT/it_isdt-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Kazakh - KTB
printf "Kazakh - KTB: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Kazakh-KTB/kk_ktb-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Kazakh-KTB/kk_ktb-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Kazakh - KTB: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Kazakh-KTB/kk_ktb-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Kazakh-KTB/kk_ktb-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Kazakh - KTB: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Kazakh-KTB/kk_ktb-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Kazakh-KTB/kk_ktb-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Norwegian - Bokmaal
printf "Norwegian - Bokmaal: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Norwegian/Bokmaal/no_bokmaal-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Norwegian/Bokmaal/no_bokmaal-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Norwegian - Bokmaal: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Norwegian/Bokmaal/no_bokmaal-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Norwegian/Bokmaal/no_bokmaal-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Norwegian - Bokmaal: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Norwegian/Bokmaal/no_bokmaal-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Norwegian/Bokmaal/no_bokmaal-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Norwegian - Bokmaal: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Norwegian/Bokmaal/no_bokmaal-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Norwegian/Bokmaal/no_bokmaal-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Norwegian - Nynorsk
printf "Norwegian - Nynorsk: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Norwegian/Nynorsk/no_nynorsk-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Norwegian/Nynorsk/no_nynorsk-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Norwegian - Nynorsk: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Norwegian/Nynorsk/no_nynorsk-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Norwegian/Nynorsk/no_nynorsk-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Norwegian - Nynorsk: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Norwegian/Nynorsk/no_nynorsk-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Norwegian/Nynorsk/no_nynorsk-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Norwegian - Nynorsk: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Norwegian/Nynorsk/no_nynorsk-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Norwegian/Nynorsk/no_nynorsk-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Romanian - RRT
printf "Romanian - RRT: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Romanian-RRT/ro_rrt-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Romanian-RRT/ro_rrt-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Romanian - RRT: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Romanian-RRT/ro_rrt-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Romanian-RRT/ro_rrt-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Romanian - RRT: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Romanian-RRT/ro_rrt-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Romanian-RRT/ro_rrt-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Romanian - RRT: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Romanian-RRT/ro_rrt-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Romanian-RRT/ro_rrt-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Russian - GSD
printf "Russian - GSD: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Russian/GSD/ru_gsd-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Russian/GSD/ru_gsd-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Russian - GSD: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Russian/GSD/ru_gsd-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Russian/GSD/ru_gsd-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Russian - GSD: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Russian/GSD/ru_gsd-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Russian/GSD/ru_gsd-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Russian - GSD: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Russian/GSD/ru_gsd-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Russian/GSD/ru_gsd-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Russian - SynTagRus
printf "Russian - SynTagRus: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Russian/SynTagRus/ru_syntagrus-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Russian/SynTagRus/ru_syntagrus-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Russian - SynTagRus: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Russian/SynTagRus/ru_syntagrus-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Russian/SynTagRus/ru_syntagrus-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Russian - SynTagRus: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Russian/SynTagRus/ru_syntagrus-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Russian/SynTagRus/ru_syntagrus-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Russian - SynTagRus: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Russian/SynTagRus/ru_syntagrus-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Russian/SynTagRus/ru_syntagrus-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Spanish - AnCora
printf "Spanish - AnCora: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Spanish/AnCora/es_ancora-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Spanish/AnCora/es_ancora-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Spanish - AnCora: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Spanish/AnCora/es_ancora-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Spanish/AnCora/es_ancora-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Spanish - AnCora: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Spanish/AnCora/es_ancora-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Spanish/AnCora/es_ancora-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Spanish - AnCora: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Spanish/AnCora/es_ancora-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Spanish/AnCora/es_ancora-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Spanish - GSD
printf "Spanish - GSD: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Spanish/GSD/es_gsd-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Spanish/GSD/es_gsd-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Spanish - GSD: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Spanish/GSD/es_gsd-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Spanish/GSD/es_gsd-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Spanish - GSD: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Spanish/GSD/es_gsd-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Spanish/GSD/es_gsd-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Spanish - GSD: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Spanish/GSD/es_gsd-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Spanish/GSD/es_gsd-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Tamil - TTB
printf "Tamil - TTB: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Tamil-TTB/ta_ttb-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Tamil-TTB/ta_ttb-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Tamil - TTB: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Tamil-TTB/ta_ttb-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Tamil-TTB/ta_ttb-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Tamil - TTB: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Tamil-TTB/ta_ttb-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Tamil-TTB/ta_ttb-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Tamil - TTB: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Tamil-TTB/ta_ttb-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Tamil-TTB/ta_ttb-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Uyghur - UDT
printf "Uyghur - UDT: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Uyghur-UDT/ug_udt-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Uyghur-UDT/ug_udt-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Uyghur - UDT: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Uyghur-UDT/ug_udt-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Uyghur-UDT/ug_udt-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Uyghur - UDT: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Uyghur-UDT/ug_udt-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Uyghur-UDT/ug_udt-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Uyghur - UDT: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Uyghur-UDT/ug_udt-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Uyghur-UDT/ug_udt-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Wolof - WTB
printf "Wolof - WTB: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Wolof-WTB/wo_wtb-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Wolof-WTB/wo_wtb-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Wolof - WTB: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Wolof-WTB/wo_wtb-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Wolof-WTB/wo_wtb-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Wolof - WTB: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Wolof-WTB/wo_wtb-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Wolof-WTB/wo_wtb-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Wolof - WTB: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/UD/Wolof-WTB/wo_wtb-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/UD/Wolof-WTB/wo_wtb-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

#################
# Low Resources #
#################

# Belarusian - HSE
printf "Belarusian - HSE: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Belarusian-HSE/be_hse-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Belarusian-HSE/be_hse-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Belarusian - HSE: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Belarusian-HSE/be_hse-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Belarusian-HSE/be_hse-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Belarusian - HSE: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Belarusian-HSE/be_hse-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Belarusian-HSE/be_hse-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Belarusian - HSE: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Belarusian-HSE/be_hse-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Belarusian-HSE/be_hse-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Galician - TreeGal
printf "Galician - TreeGal: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Galician-TreeGal/gl_treegal-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Galician-TreeGal/gl_treegal-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Galician - TreeGal: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Galician-TreeGal/gl_treegal-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Galician-TreeGal/gl_treegal-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Galician - TreeGal: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Galician-TreeGal/gl_treegal-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Galician-TreeGal/gl_treegal-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Galician - TreeGal: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Galician-TreeGal/gl_treegal-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Galician-TreeGal/gl_treegal-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Lithuanian - HSE
printf "Lithuanian - HSE: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Lithuanian-HSE/lt_hse-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Lithuanian-HSE/lt_hse-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Lithuanian - HSE: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Lithuanian-HSE/lt_hse-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Lithuanian-HSE/lt_hse-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Lithuanian - HSE: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Lithuanian-HSE/lt_hse-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Lithuanian-HSE/lt_hse-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Lithuanian - HSE: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Lithuanian-HSE/lt_hse-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Lithuanian-HSE/lt_hse-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Marathi - UFAL
printf "Marathi - UFAL: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Marathi-UFAL/mr_ufal-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Marathi-UFAL/mr_ufal-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Marathi - UFAL: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Marathi-UFAL/mr_ufal-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Marathi-UFAL/mr_ufal-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Marathi - UFAL: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Marathi-UFAL/mr_ufal-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Marathi-UFAL/mr_ufal-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Marathi - UFAL: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Marathi-UFAL/mr_ufal-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Marathi-UFAL/mr_ufal-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Old_Russian - RNC
printf "Old_Russian - RNC: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Old_Russian-RNC/orv_rnc-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Old_Russian-RNC/orv_rnc-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Old_Russian - RNC: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Old_Russian-RNC/orv_rnc-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Old_Russian-RNC/orv_rnc-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Old_Russian - RNC: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Old_Russian-RNC/orv_rnc-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Old_Russian-RNC/orv_rnc-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Old_Russian - RNC: %s\n" "Test Light"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Old_Russian-RNC/orv_rnc-ud-test-light.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Old_Russian-RNC/orv_rnc-ud-test-light.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Welsh - CCG
printf "Welsh - CCG: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Welsh-CCG/cy_ccg-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Welsh-CCG/cy_ccg-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Welsh - CCG: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Welsh-CCG/cy_ccg-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Welsh-CCG/cy_ccg-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Welsh - CCG: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/LowResources/Welsh-CCG/cy_ccg-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/LowResources/Welsh-CCG/cy_ccg-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

###############
# Control Set #
###############

# Greek - GDT
printf "Greek - GDT: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Greek-GDT/el_gdt-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Greek-GDT/el_gdt-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Greek - GDT: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Greek-GDT/el_gdt-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Greek-GDT/el_gdt-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Greek - GDT: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Greek-GDT/el_gdt-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Greek-GDT/el_gdt-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Greek - GDT: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Greek-GDT/el_gdt-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Greek-GDT/el_gdt-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Hindi - HDTB
printf "Greek - GDT: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Hindi-HDTB/hi_hdtb-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Hindi-HDTB/hi_hdtb-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Greek - GDT: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Hindi-HDTB/hi_hdtb-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Hindi-HDTB/hi_hdtb-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Greek - GDT: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Hindi-HDTB/hi_hdtb-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Hindi-HDTB/hi_hdtb-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Greek - GDT: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Hindi-HDTB/hi_hdtb-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Hindi-HDTB/hi_hdtb-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Polish - LFG
printf "Polish - LFG: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Polish-LFG/pl_lfg-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Polish-LFG/pl_lfg-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Polish - LFG: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Polish-LFG/pl_lfg-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Polish-LFG/pl_lfg-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Polish - LFG: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Polish-LFG/pl_lfg-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Polish-LFG/pl_lfg-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Polish - LFG: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Polish-LFG/pl_lfg-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Polish-LFG/pl_lfg-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Slovak - SNK
printf "Slovak - SNK: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Slovak-SNK/sk_snk-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Slovak-SNK/sk_snk-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Slovak - SNK: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Slovak-SNK/sk_snk-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Slovak-SNK/sk_snk-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Slovak - SNK: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Slovak-SNK/sk_snk-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Slovak-SNK/sk_snk-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Slovak - SNK: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Slovak-SNK/sk_snk-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Slovak-SNK/sk_snk-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Slovenian - SSJ
printf "Slovenian - SSJ: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Slovenian-SSJ/sl_ssj-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Slovenian-SSJ/sl_ssj-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Slovenian - SSJ: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Slovenian-SSJ/sl_ssj-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Slovenian-SSJ/sl_ssj-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Slovenian - SSJ: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Slovenian-SSJ/sl_ssj-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Slovenian-SSJ/sl_ssj-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Slovenian - SSJ: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Slovenian-SSJ/sl_ssj-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Slovenian-SSJ/sl_ssj-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

# Swedish - Talbanken
printf "Swedish - Talbanken: %s\n" "Train"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Swedish-Talbanken/sv_talbanken-ud-train.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Swedish-Talbanken/sv_talbanken-ud-train.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Swedish - Talbanken: %s\n" "Dev"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Swedish-Talbanken/sv_talbanken-ud-dev.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Swedish-Talbanken/sv_talbanken-ud-dev.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Swedish - Talbanken: %s\n" "Test"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Swedish-Talbanken/sv_talbanken-ud-test.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Swedish-Talbanken/sv_talbanken-ud-test.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"

printf "Swedish - Talbanken: %s\n" "Test UDPipe"
python encode_dep2labels.py \
  --input "/home/iago/Escritorio/SuPar/data/Pruebas/ControlSet/Swedish-Talbanken/sv_talbanken-ud-test_udpipe.conll" \
  --output "/home/iago/Escritorio/DepToLabel/data/ControlSet/Swedish-Talbanken/sv_talbanken-ud-test_udpipe.seq" \
  --encoding "2-planar-brackets-greedy" \
  --mtl "3-task"
