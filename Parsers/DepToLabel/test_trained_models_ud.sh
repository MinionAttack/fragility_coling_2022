#!/usr/bin/env bash

source ./venv/bin/activate

# Ancient_Greek - Perseus
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Ancient_Greek/Perseus/grc_perseus-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Ancient_Greek/Perseus/grc_perseus-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Ancient_Greek/Perseus/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Ancient_Greek/Perseus/Iteracion_"$index"/grc_perseus-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Ancient_Greek/Perseus/Iteracion_"$index"/decode.log
done

# Ancient_Greek - PROIEL
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Ancient_Greek/PROIEL/grc_proiel-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Ancient_Greek/PROIEL/grc_proiel-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Ancient_Greek/PROIEL/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Ancient_Greek/PROIEL/Iteracion_"$index"/grc_proiel-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Ancient_Greek/PROIEL/Iteracion_"$index"/decode.log
done

# Bulgarian - BTB
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Bulgarian-BTB/bg_btb-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Bulgarian-BTB/bg_btb-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Bulgarian-BTB/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Bulgarian-BTB/Iteracion_"$index"/bg_btb-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Bulgarian-BTB/Iteracion_"$index"/decode.log
done

# Catalan - AnCora
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Catalan-AnCora/ca_ancora-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Catalan-AnCora/ca_ancora-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Catalan-AnCora/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Catalan-AnCora/Iteracion_"$index"/ca_ancora-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Catalan-AnCora/Iteracion_"$index"/decode.log
done

# Chinese - GSD
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Chinese-GSD/zh_gsd-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Chinese-GSD/zh_gsd-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Chinese-GSD/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Chinese-GSD/Iteracion_"$index"/zh_gsd-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Chinese-GSD/Iteracion_"$index"/decode.log
done

# Czech - CAC
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Czech/CAC/cs_cac-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Czech/CAC/cs_cac-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Czech/CAC/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Czech/CAC/Iteracion_"$index"/cs_cac-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Czech/CAC/Iteracion_"$index"/decode.log
done

# Czech - CLTT
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Czech/CLTT/cs_cltt-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Czech/CLTT/cs_cltt-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Czech/CLTT/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Czech/CLTT/Iteracion_"$index"/cs_cltt-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Czech/CLTT/Iteracion_"$index"/decode.log
done

# Czech - FicTree
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Czech/FicTree/cs_fictree-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Czech/FicTree/cs_fictree-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Czech/FicTree/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Czech/FicTree/Iteracion_"$index"/cs_fictree-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Czech/FicTree/Iteracion_"$index"/decode.log
done

# Czech - PDT
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Czech/PDT/cs_pdt-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Czech/PDT/cs_pdt-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Czech/PDT/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Czech/PDT/Iteracion_"$index"/cs_pdt-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Czech/PDT/Iteracion_"$index"/decode.log
done

# Dutch - Alpino
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Dutch/Alpino/nl_alpino-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Dutch/Alpino/nl_alpino-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Dutch/Alpino/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Dutch/Alpino/Iteracion_"$index"/nl_alpino-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Dutch/Alpino/Iteracion_"$index"/decode.log
done

# Dutch - LassySmall
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Dutch/LassySmall/nl_lassysmall-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Dutch/LassySmall/nl_lassysmall-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Dutch/LassySmall/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Dutch/LassySmall/Iteracion_"$index"/nl_lassysmall-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Dutch/LassySmall/Iteracion_"$index"/decode.log
done

# English - EWT
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/English-EWT/en_ewt-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/English-EWT/en_ewt-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/English-EWT/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/English-EWT/Iteracion_"$index"/en_ewt-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/English-EWT/Iteracion_"$index"/decode.log
done

# Finnish - TDT
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Finnish-TDT/fi_tdt-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Finnish-TDT/fi_tdt-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Finnish-TDT/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Finnish-TDT/Iteracion_"$index"/fi_tdt-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Finnish-TDT/Iteracion_"$index"/decode.log
done

# French - GSD
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/French-GSD/fr_gsd-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/French-GSD/fr_gsd-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/French-GSD/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/French-GSD/Iteracion_"$index"/fr_gsd-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/French-GSD/Iteracion_"$index"/decode.log
done

# German - GSD
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/German-GSD/de_gsd-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/German-GSD/de_gsd-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/German-GSD/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/German-GSD/Iteracion_"$index"/de_gsd-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/German-GSD/Iteracion_"$index"/decode.log
done

# Hebrew - HTB
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Hebrew-HTB/he_htb-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Hebrew-HTB/he_htb-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Hebrew-HTB/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Hebrew-HTB/Iteracion_"$index"/he_htb-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Hebrew-HTB/Iteracion_"$index"/decode.log
done

# Italian - ISDT
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Italian-ISDT/it_isdt-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Italian-ISDT/it_isdt-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Italian-ISDT/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Italian-ISDT/Iteracion_"$index"/it_isdt-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Italian-ISDT/Iteracion_"$index"/decode.log
done

# Kazakh - KTB
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Kazakh-KTB/kk_ktb-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Kazakh-KTB/kk_ktb-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Kazakh-KTB/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Kazakh-KTB/Iteracion_"$index"/kk_ktb-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Kazakh-KTB/Iteracion_"$index"/decode.log
done

# Norwegian - Bokmaal
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Norwegian/Bokmaal/no_bokmaal-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Norwegian/Bokmaal/no_bokmaal-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Norwegian/Bokmaal/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Norwegian/Bokmaal/Iteracion_"$index"/no_bokmaal-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Norwegian/Bokmaal/Iteracion_"$index"/decode.log
done

# Norwegian - Nynorsk
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Norwegian/Nynorsk/no_nynorsk-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Norwegian/Nynorsk/no_nynorsk-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Norwegian/Nynorsk/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Norwegian/Nynorsk/Iteracion_"$index"/no_nynorsk-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Norwegian/Nynorsk/Iteracion_"$index"/decode.log
done

# Romanian - RRT
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Romanian-RRT/ro_rrt-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Romanian-RRT/ro_rrt-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Romanian-RRT/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Romanian-RRT/Iteracion_"$index"/ro_rrt-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Romanian-RRT/Iteracion_"$index"/decode.log
done

# Russian - GSD
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Russian/GSD/ru_gsd-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Russian/GSD/ru_gsd-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Russian/GSD/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Russian/GSD/Iteracion_"$index"/ru_gsd-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Russian/GSD/Iteracion_"$index"/decode.log
done

# Russian - SynTagRus
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Russian/SynTagRus/ru_syntagrus-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Russian/SynTagRus/ru_syntagrus-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Russian/SynTagRus/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Russian/SynTagRus/Iteracion_"$index"/ru_syntagrus-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Russian/SynTagRus/Iteracion_"$index"/decode.log
done

# Spanish - AnCora
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Spanish/AnCora/es_ancora-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Spanish/AnCora/es_ancora-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Spanish/AnCora/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Spanish/AnCora/Iteracion_"$index"/es_ancora-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Spanish/AnCora/Iteracion_"$index"/decode.log
done

# Spanish - GSD
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Spanish/GSD/es_gsd-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Spanish/GSD/es_gsd-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Spanish/GSD/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Spanish/GSD/Iteracion_"$index"/es_gsd-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Spanish/GSD/Iteracion_"$index"/decode.log
done

# Tamil - TTB
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Tamil-TTB/ta_ttb-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Tamil-TTB/ta_ttb-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Tamil-TTB/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Tamil-TTB/Iteracion_"$index"/ta_ttb-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Tamil-TTB/Iteracion_"$index"/decode.log
done

# Uyghur - UDT
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Uyghur-UDT/ug_udt-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Uyghur-UDT/ug_udt-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Uyghur-UDT/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Uyghur-UDT/Iteracion_"$index"/ug_udt-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Uyghur-UDT/Iteracion_"$index"/decode.log
done

# Wolof - WTB
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/UD/Wolof-WTB/wo_wtb-ud-test.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/UD/Wolof-WTB/wo_wtb-ud-test.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/UD/Wolof-WTB/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/UD/Wolof-WTB/Iteracion_"$index"/wo_wtb-predicted-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/UD/Wolof-WTB/Iteracion_"$index"/decode.log
done
