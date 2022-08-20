#!/usr/bin/env bash

source ./venv/bin/activate

user="your_user_name"

# Ancient_Greek - Perseus
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Ancient_Greek/Perseus/grc_perseus-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Ancient_Greek/Perseus/grc_perseus-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Ancient_Greek/Perseus/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Ancient_Greek/Perseus/Iteracion_"$index"/grc_perseus-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Ancient_Greek/Perseus/Iteracion_"$index"/decode_udpipe.log
done

# Ancient_Greek - PROIEL
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Ancient_Greek/PROIEL/grc_proiel-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Ancient_Greek/PROIEL/grc_proiel-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Ancient_Greek/PROIEL/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Ancient_Greek/PROIEL/Iteracion_"$index"/grc_proiel-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Ancient_Greek/PROIEL/Iteracion_"$index"/decode_udpipe.log
done

# Bulgarian - BTB
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Bulgarian-BTB/bg_btb-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Bulgarian-BTB/bg_btb-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Bulgarian-BTB/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Bulgarian-BTB/Iteracion_"$index"/bg_btb-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Bulgarian-BTB/Iteracion_"$index"/decode_udpipe.log
done

# Catalan - AnCora
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Catalan-AnCora/ca_ancora-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Catalan-AnCora/ca_ancora-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Catalan-AnCora/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Catalan-AnCora/Iteracion_"$index"/ca_ancora-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Catalan-AnCora/Iteracion_"$index"/decode_udpipe.log
done

# Chinese - GSD
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Chinese-GSD/zh_gsd-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Chinese-GSD/zh_gsd-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Chinese-GSD/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Chinese-GSD/Iteracion_"$index"/zh_gsd-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Chinese-GSD/Iteracion_"$index"/decode_udpipe.log
done

# Czech - CAC
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Czech/CAC/cs_cac-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Czech/CAC/cs_cac-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/CAC/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/CAC/Iteracion_"$index"/cs_cac-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/CAC/Iteracion_"$index"/decode_udpipe.log
done

# Czech - CLTT
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Czech/CLTT/cs_cltt-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Czech/CLTT/cs_cltt-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/CLTT/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/CLTT/Iteracion_"$index"/cs_cltt-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/CLTT/Iteracion_"$index"/decode_udpipe.log
done

# Czech - FicTree
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Czech/FicTree/cs_fictree-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Czech/FicTree/cs_fictree-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/FicTree/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/FicTree/Iteracion_"$index"/cs_fictree-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/FicTree/Iteracion_"$index"/decode_udpipe.log
done

# Czech - PDT
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Czech/PDT/cs_pdt-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Czech/PDT/cs_pdt-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/PDT/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/PDT/Iteracion_"$index"/cs_pdt-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/PDT/Iteracion_"$index"/decode_udpipe.log
done

# Dutch - Alpino
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Dutch/Alpino/nl_alpino-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Dutch/Alpino/nl_alpino-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Dutch/Alpino/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Dutch/Alpino/Iteracion_"$index"/nl_alpino-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Dutch/Alpino/Iteracion_"$index"/decode_udpipe.log
done

# Dutch - LassySmall
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Dutch/LassySmall/nl_lassysmall-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Dutch/LassySmall/nl_lassysmall-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Dutch/LassySmall/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Dutch/LassySmall/Iteracion_"$index"/nl_lassysmall-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Dutch/LassySmall/Iteracion_"$index"/decode_udpipe.log
done

# English - EWT
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/English-EWT/en_ewt-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/English-EWT/en_ewt-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/English-EWT/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/English-EWT/Iteracion_"$index"/en_ewt-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/English-EWT/Iteracion_"$index"/decode_udpipe.log
done

# Finnish - TDT
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Finnish-TDT/fi_tdt-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Finnish-TDT/fi_tdt-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Finnish-TDT/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Finnish-TDT/Iteracion_"$index"/fi_tdt-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Finnish-TDT/Iteracion_"$index"/decode_udpipe.log
done

# French - GSD
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/French-GSD/fr_gsd-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/French-GSD/fr_gsd-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/French-GSD/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/French-GSD/Iteracion_"$index"/fr_gsd-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/French-GSD/Iteracion_"$index"/decode_udpipe.log
done

# German - GSD
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/German-GSD/de_gsd-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/German-GSD/de_gsd-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/German-GSD/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/German-GSD/Iteracion_"$index"/de_gsd-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/German-GSD/Iteracion_"$index"/decode_udpipe.log
done

# Hebrew - HTB
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Hebrew-HTB/he_htb-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Hebrew-HTB/he_htb-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Hebrew-HTB/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Hebrew-HTB/Iteracion_"$index"/he_htb-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Hebrew-HTB/Iteracion_"$index"/decode_udpipe.log
done

# Italian - ISDT
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Italian-ISDT/it_isdt-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Italian-ISDT/it_isdt-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Italian-ISDT/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Italian-ISDT/Iteracion_"$index"/it_isdt-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Italian-ISDT/Iteracion_"$index"/decode_udpipe.log
done

# Norwegian - Bokmaal
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Norwegian/Bokmaal/no_bokmaal-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Norwegian/Bokmaal/no_bokmaal-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Norwegian/Bokmaal/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Norwegian/Bokmaal/Iteracion_"$index"/no_bokmaal-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Norwegian/Bokmaal/Iteracion_"$index"/decode_udpipe.log
done

# Norwegian - Nynorsk
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Norwegian/Nynorsk/no_nynorsk-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Norwegian/Nynorsk/no_nynorsk-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Norwegian/Nynorsk/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Norwegian/Nynorsk/Iteracion_"$index"/no_nynorsk-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Norwegian/Nynorsk/Iteracion_"$index"/decode_udpipe.log
done

# Romanian - RRT
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Romanian-RRT/ro_rrt-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Romanian-RRT/ro_rrt-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Romanian-RRT/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Romanian-RRT/Iteracion_"$index"/ro_rrt-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Romanian-RRT/Iteracion_"$index"/decode_udpipe.log
done

# Russian - GSD
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Russian/GSD/ru_gsd-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Russian/GSD/ru_gsd-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Russian/GSD/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Russian/GSD/Iteracion_"$index"/ru_gsd-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Russian/GSD/Iteracion_"$index"/decode_udpipe.log
done

# Russian - SynTagRus
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Russian/SynTagRus/ru_syntagrus-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Russian/SynTagRus/ru_syntagrus-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Russian/SynTagRus/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Russian/SynTagRus/Iteracion_"$index"/ru_syntagrus-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Russian/SynTagRus/Iteracion_"$index"/decode_udpipe.log
done

# Spanish - AnCora
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Spanish/AnCora/es_ancora-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Spanish/AnCora/es_ancora-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Spanish/AnCora/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Spanish/AnCora/Iteracion_"$index"/es_ancora-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Spanish/AnCora/Iteracion_"$index"/decode_udpipe.log
done

# Spanish - GSD
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Spanish/GSD/es_gsd-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Spanish/GSD/es_gsd-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Spanish/GSD/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Spanish/GSD/Iteracion_"$index"/es_gsd-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Spanish/GSD/Iteracion_"$index"/decode_udpipe.log
done

# Tamil - TTB
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Tamil-TTB/ta_ttb-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Tamil-TTB/ta_ttb-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Tamil-TTB/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Tamil-TTB/Iteracion_"$index"/ta_ttb-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Tamil-TTB/Iteracion_"$index"/decode_udpipe.log
done

# Uyghur - UDT
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Uyghur-UDT/ug_udt-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Uyghur-UDT/ug_udt-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Uyghur-UDT/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Uyghur-UDT/Iteracion_"$index"/ug_udt-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Uyghur-UDT/Iteracion_"$index"/decode_udpipe.log
done

# Wolof - WTB
for index in {1..3}; do
  python decode.py --test /home/"$user"/Desktop/DepToLabel/data/UD/Wolof-WTB/wo_wtb-ud-test_udpipe.seq \
    --gold /home/"$user"/Desktop/DepToLabel/data/UD/Wolof-WTB/wo_wtb-ud-test_udpipe.conll \
    --model /home/"$user"/Desktop/DepToLabel/trained_models/UD/Wolof-WTB/Iteracion_"$index"/model \
    --gpu True \
    --output /home/"$user"/Desktop/DepToLabel/trained_models/UD/Wolof-WTB/Iteracion_"$index"/wo_wtb-predicted_udpipe-test.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/"$user"/Desktop/DepToLabel |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Wolof-WTB/Iteracion_"$index"/decode.log
done
