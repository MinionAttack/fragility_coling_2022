#!/usr/bin/env bash

source ./venv/bin/activate

user="your_user_name"

# Ancient_Greek - Perseus
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Ancient_Greek/Perseus/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Ancient_Greek/Perseus/Iteracion_"$index"/train.log
done

# Ancient_Greek - PROIEL
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Ancient_Greek/PROIEL/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Ancient_Greek/PROIEL/Iteracion_"$index"/train.log
done

# Bulgarian - BTB
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Bulgarian-BTB/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Bulgarian-BTB/Iteracion_"$index"/train.log
done

# Catalan - AnCora
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Catalan-AnCora/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Catalan-AnCora/Iteracion_"$index"/train.log
done

# Chinese - GSD
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Chinese-GSD/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Chinese-GSD/Iteracion_"$index"/train.log
done

# Czech - CAC
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/CAC/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/CAC/Iteracion_"$index"/train.log
done

# Czech - CLTT
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/CLTT/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/CLTT/Iteracion_"$index"/train.log
done

# Czech - FicTree
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/FicTree/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/FicTree/Iteracion_"$index"/train.log
done

# Czech - PDT
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/PDT/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Czech/PDT/Iteracion_"$index"/train.log
done

# Dutch - Alpino
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Dutch/Alpino/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Dutch/Alpino/Iteracion_"$index"/train.log
done

# Dutch - LassySmall
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Dutch/LassySmall/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Dutch/LassySmall/Iteracion_"$index"/train.log
done

# English - EWT
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/English-EWT/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/English-EWT/Iteracion_"$index"/train.log
done

# Finnish - TDT
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Finnish-TDT/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Finnish-TDT/Iteracion_"$index"/train.log
done

# French - GSD
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/French-GSD/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/French-GSD/Iteracion_"$index"/train.log
done

# German - GSD
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/German-GSD/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/German-GSD/Iteracion_"$index"/train.log
done

# Hebrew - HTB
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Hebrew-HTB/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Hebrew-HTB/Iteracion_"$index"/train.log
done

# Italian - ISDT
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Italian-ISDT/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Italian-ISDT/Iteracion_"$index"/train.log
done

# Kazakh - KTB
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Kazakh-KTB/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Kazakh-KTB/Iteracion_"$index"/train.log
done

# Norwegian - Bokmaal
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Norwegian/Bokmaal/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Norwegian/Bokmaal/Iteracion_"$index"/train.log
done

# Norwegian - Nynorsk
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Norwegian/Nynorsk/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Norwegian/Nynorsk/Iteracion_"$index"/train.log
done

# Romanian - RRT
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Romanian-RRT/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Romanian-RRT/Iteracion_"$index"/train.log
done

# Russian - GSD
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Russian/GSD/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Russian/GSD/Iteracion_"$index"/train.log
done

# Russian - SynTagRus
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Russian/SynTagRus/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Russian/SynTagRus/Iteracion_"$index"/train.log
done

# Spanish - AnCora
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Spanish/AnCora/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Spanish/AnCora/Iteracion_"$index"/train.log
done

# Spanish - GSD
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Spanish/GSD/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Spanish/GSD/Iteracion_"$index"/train.log
done

# Tamil - TTB
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Tamil-TTB/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Tamil-TTB/Iteracion_"$index"/train.log
done

# Uyghur - UDT
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Uyghur-UDT/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Uyghur-UDT/Iteracion_"$index"/train.log
done

# Wolof - WTB
for index in {1..3}; do
  python main.py --config /home/"$user"/Desktop/DepToLabel/trained_models/UD/Wolof-WTB/Iteracion_"$index"/train.config |
    tee /home/"$user"/Desktop/DepToLabel/trained_models/UD/Wolof-WTB/Iteracion_"$index"/train.log
done
