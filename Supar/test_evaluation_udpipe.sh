#!/usr/bin/env bash

source ./env/bin/activate

# Ancient_Greek - Perseus
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Ancient_Greek/Perseus/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Ancient_Greek/Perseus/grc_perseus-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Ancient_Greek - PROIEL
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Ancient_Greek/PROIEL/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Ancient_Greek/PROIEL/grc_proiel-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Bulgarian - BTB
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Bulgarian-BTB/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Bulgarian-BTB/bg_btb-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Catalan - AnCora
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Catalan-AnCora/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Catalan-AnCora/ca_ancora-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Chinese - GSD
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Chinese-GSD/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Chinese-GSD/zh_gsd-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Czech - CAC
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Czech/CAC/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Czech/CAC/cs_cac-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Czech - CLTT
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Czech/CLTT/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Czech/CLTT/cs_cltt-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Czech - FicTree
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Czech/FicTree/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Czech/FicTree/cs_fictree-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Czech - PDT
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Czech/PDT/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Czech/PDT/cs_pdt-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Dutch - Alpino
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Dutch/Alpino/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Dutch/Alpino/nl_alpino-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Dutch - LassySmall
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Dutch/LassySmall/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Dutch/LassySmall/nl_lassysmall-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# English - EWT
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/English-EWT/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/English-EWT/en_ewt-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Finnish - TDT
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Finnish-TDT/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Finnish-TDT/fi_tdt-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# French - GSD
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/French-GSD/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/French-GSD/fr_gsd-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# German - GSD
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/German-GSD/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/German-GSD/de_gsd-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Hebrew - HTB
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Hebrew-HTB/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Hebrew-HTB/he_htb-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Italian - ISDT
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Italian-ISDT/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Italian-ISDT/it_isdt-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Norwegian - Bokmaal
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Norwegian/Bokmaal/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Norwegian/Bokmaal/no_bokmaal-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Norwegian - Nynorsk
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Norwegian/Nynorsk/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Norwegian/Nynorsk/no_nynorsk-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Romanian - RRT
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Romanian-RRT/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Romanian-RRT/ro_rrt-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Russian - GSD
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Russian/GSD/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Russian/GSD/ru_gsd-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Russian - SynTagRus
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Russian/SynTagRus/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Russian/SynTagRus/ru_syntagrus-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Spanish - AnCora
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Spanish/AnCora/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Spanish/AnCora/es_ancora-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Spanish - GSD
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Spanish/GSD/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Spanish/GSD/es_gsd-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Tamil - TTB
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Tamil-TTB/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Tamil-TTB/ta_ttb-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Uyghur - UDT
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Uyghur-UDT/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Uyghur-UDT/ug_udt-ud-test_udpipe.conll \
    --punct --tree
done

printf "===================================================================================\n===================================================================================\n"

# Wolof - WTB
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep evaluate --device 0 \
    --path models/Pruebas_Punct/Wolof-WTB/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Wolof-WTB/wo_wtb-ud-test_udpipe.conll \
    --punct --tree
done
