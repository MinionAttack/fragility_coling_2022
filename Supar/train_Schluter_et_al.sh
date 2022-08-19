#!/usr/bin/env bash

source ./env/bin/activate

# Coptic - Scriptorium
for index in {1..3}; do
  python -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Coptic/cop.vectors \
    --train data/Pruebas/SchluterEtAl/Coptic-Scriptorium/cop_scriptorium-ud-train.conll \
    --dev data/Pruebas/SchluterEtAl/Coptic-Scriptorium/cop_scriptorium-ud-dev.conll \
    --test data/Pruebas/SchluterEtAl/Coptic-Scriptorium/cop_scriptorium-ud-test.conll \
    --path models/Pruebas_Punct/SchluterEtAl/Coptic-Scriptorium/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Indonesian - GSD
for index in {1..3}; do
  python -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Indonesian/cc.id.300.vec \
    --train data/Pruebas/SchluterEtAl/Indonesian-GSD/id_gsd-ud-train.conll \
    --dev data/Pruebas/SchluterEtAl/Indonesian-GSD/id_gsd-ud-dev.conll \
    --test data/Pruebas/SchluterEtAl/Indonesian-GSD/id_gsd-ud-test.conll \
    --path models/Pruebas_Punct/SchluterEtAl/Indonesian-GSD/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Old Church Slavonic - PROIEL
for index in {1..3}; do
  python -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Old_Church_Slavonic/cu.vectors \
    --train data/Pruebas/SchluterEtAl/Old_Church_Slavonic-PROIEL/cu_proiel-ud-train.conll \
    --dev data/Pruebas/SchluterEtAl/Old_Church_Slavonic-PROIEL/cu_proiel-ud-dev.conll \
    --test data/Pruebas/SchluterEtAl/Old_Church_Slavonic-PROIEL/cu_proiel-ud-test.conll \
    --path models/Pruebas_Punct/SchluterEtAl/Old_Church_Slavonic-PROIEL/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Polish - PDB
for index in {1..3}; do
  python -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Polish/cc.pl.300.vec \
    --train data/Pruebas/SchluterEtAl/Polish-PDB/pl_pdb-ud-train.conll \
    --dev data/Pruebas/SchluterEtAl/Polish-PDB/pl_pdb-ud-dev.conll \
    --test data/Pruebas/SchluterEtAl/Polish-PDB/pl_pdb-ud-test.conll \
    --path models/Pruebas_Punct/SchluterEtAl/Polish-PDB/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"

# Sanskrit - Vedic
for index in {1..3}; do
  python -m supar.cmds.biaffine_dep train --build --device 0 --conf config/ud.biaffine.dep.lstm.char.ini \
    --n-embed 300 --feat tag char --encoder lstm --unk '' --punct --tree \
    --embed data/Pruebas/Embeddings/Sanskrit/cc.sa.300.vec \
    --train data/Pruebas/SchluterEtAl/Sanskrit-Vedic/sa_vedic-ud-train.conll \
    --dev data/Pruebas/SchluterEtAl/Sanskrit-Vedic/sa_vedic-ud-dev.conll \
    --test data/Pruebas/SchluterEtAl/Sanskrit-Vedic/sa_vedic-ud-test.conll \
    --path models/Pruebas_Punct/SchluterEtAl/Sanskrit-Vedic/Iteracion_"$index"
done

printf "===================================================================================\n===================================================================================\n"
