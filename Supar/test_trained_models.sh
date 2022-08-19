#!/usr/bin/env bash

source ./env/bin/activate

# Ancient_Greek - Perseus
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Ancient_Greek/Perseus/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Ancient_Greek/Perseus/grc_perseus-ud-test.conll \
    --pred models/Pruebas/Ancient_Greek/Perseus/Iteracion_"$index"/grc_perseus-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Ancient_Greek - PROIEL
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Ancient_Greek/PROIEL/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Ancient_Greek/PROIEL/grc_proiel-ud-test.conll \
    --pred models/Pruebas/Ancient_Greek/PROIEL/Iteracion_"$index"/grc_proiel-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Bulgarian - BTB
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Bulgarian-BTB/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Bulgarian-BTB/bg_btb-ud-test.conll \
    --pred models/Pruebas/Bulgarian-BTB/Iteracion_"$index"/bg_btb-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Catalan - AnCora
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Catalan-AnCora/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Catalan-AnCora/ca_ancora-ud-test.conll \
    --pred models/Pruebas/Catalan-AnCora/Iteracion_"$index"/ca_ancora-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Chinese - GSD
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Chinese-GSD/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Chinese-GSD/zh_gsd-ud-test.conll \
    --pred models/Pruebas/Chinese-GSD/Iteracion_"$index"/zh_gsd-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Czech - CAC
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Czech/CAC/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Czech/CAC/cs_cac-ud-test.conll \
    --pred models/Pruebas/Czech/CAC/Iteracion_"$index"/cs_cac-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Czech - CLTT
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Czech/CLTT/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Czech/CLTT/cs_cltt-ud-test.conll \
    --pred models/Pruebas/Czech/CLTT/Iteracion_"$index"/cs_cltt-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Czech - FicTree
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Czech/FicTree/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Czech/FicTree/cs_fictree-ud-test.conll \
    --pred models/Pruebas/Czech/FicTree/Iteracion_"$index"/cs_fictree-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Czech - PDT
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Czech/PDT/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Czech/PDT/cs_pdt-ud-test.conll \
    --pred models/Pruebas/Czech/PDT/Iteracion_"$index"/cs_pdt-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Dutch - Alpino
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Dutch/Alpino/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Dutch/Alpino/nl_alpino-ud-test.conll \
    --pred models/Pruebas/Dutch/Alpino/Iteracion_"$index"/nl_alpino-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Dutch - LassySmall
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Dutch/LassySmall/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Dutch/LassySmall/nl_lassysmall-ud-test.conll \
    --pred models/Pruebas/Dutch/LassySmall/Iteracion_"$index"/nl_lassysmall-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# English - EWT
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/English-EWT/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/English-EWT/en_ewt-ud-test.conll \
    --pred models/Pruebas/English-EWT/Iteracion_"$index"/en_ewt-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Finnish - TDT
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Finnish-TDT/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Finnish-TDT/fi_tdt-ud-test.conll \
    --pred models/Pruebas/Finnish-TDT/Iteracion_"$index"/fi_tdt-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# French - GSD
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/French-GSD/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/French-GSD/fr_gsd-ud-test.conll \
    --pred models/Pruebas/French-GSD/Iteracion_"$index"/fr_gsd-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# German - GSD
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/German-GSD/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/German-GSD/de_gsd-ud-test.conll \
    --pred models/Pruebas/German-GSD/Iteracion_"$index"/de_gsd-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Hebrew - HTB
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Hebrew-HTB/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Hebrew-HTB/he_htb-ud-test.conll \
    --pred models/Pruebas/Hebrew-HTB/Iteracion_"$index"/he_htb-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Italian - ISDT
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Italian-ISDT/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Italian-ISDT/it_isdt-ud-test.conll \
    --pred models/Pruebas/Italian-ISDT/Iteracion_"$index"/it_isdt-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Kazakh - KTB
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Kazakh-KTB/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Kazakh-KTB/kk_ktb-ud-test.conll \
    --pred models/Pruebas/Kazakh-KTB/Iteracion_"$index"/kk_ktb-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Norwegian - Bokmaal
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Norwegian/Bokmaal/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Norwegian/Bokmaal/no_bokmaal-ud-test.conll \
    --pred models/Pruebas/Norwegian/Bokmaal/Iteracion_"$index"/no_bokmaal-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Norwegian - Nynorsk
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Norwegian/Nynorsk/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Norwegian/Nynorsk/no_nynorsk-ud-test.conll \
    --pred models/Pruebas/Norwegian/Nynorsk/Iteracion_"$index"/no_nynorsk-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Romanian - RRT
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Romanian-RRT/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Romanian-RRT/ro_rrt-ud-test.conll \
    --pred models/Pruebas/Romanian-RRT/Iteracion_"$index"/ro_rrt-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Russian - GSD
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Russian/GSD/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Russian/GSD/ru_gsd-ud-test.conll \
    --pred models/Pruebas/Russian/GSD/Iteracion_"$index"/ru_gsd-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Russian - SynTagRus
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Russian/SynTagRus/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Russian/SynTagRus/ru_syntagrus-ud-test.conll \
    --pred models/Pruebas/Russian/SynTagRus/Iteracion_"$index"/ru_syntagrus-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Spanish - AnCora
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Spanish/AnCora/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Spanish/AnCora/es_ancora-ud-test.conll \
    --pred models/Pruebas/Spanish/AnCora/Iteracion_"$index"/es_ancora-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Spanish - GSD
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Spanish/GSD/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Spanish/GSD/es_gsd-ud-test.conll \
    --pred models/Pruebas/Spanish/GSD/Iteracion_"$index"/es_gsd-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Tamil - TTB
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Tamil-TTB/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Tamil-TTB/ta_ttb-ud-test.conll \
    --pred models/Pruebas/Tamil-TTB/Iteracion_"$index"/ta_ttb-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Uyghur - UDT
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Uyghur-UDT/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Uyghur-UDT/ug_udt-ud-test.conll \
    --pred models/Pruebas/Uyghur-UDT/Iteracion_"$index"/ug_udt-predicted-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Wolof - WTB
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas/Wolof-WTB/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/UD/Wolof-WTB/wo_wtb-ud-test.conll \
    --pred models/Pruebas/Wolof-WTB/Iteracion_"$index"/wo_wtb-predicted-test.conll \
    --tree
done
