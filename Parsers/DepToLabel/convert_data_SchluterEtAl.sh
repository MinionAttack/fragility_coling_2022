#!/usr/bin/env bash

source ./venv/bin/activate

user='your_user_name'

# Coptic - Scriptorium
printf 'Coptic - Scriptorium: %s\n' 'Train'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Coptic-Scriptorium/cop_scriptorium-ud-train.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Coptic-Scriptorium/cop_scriptorium-ud-train.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'

printf 'Coptic - Scriptorium: %s\n' 'Dev'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Coptic-Scriptorium/cop_scriptorium-ud-dev.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Coptic-Scriptorium/cop_scriptorium-ud-dev.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'

printf 'Coptic - Scriptorium: %s\n' 'Test'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Coptic-Scriptorium/cop_scriptorium-ud-test.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Coptic-Scriptorium/cop_scriptorium-ud-test.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'

printf 'Coptic - Scriptorium: %s\n' 'Test UDPipe'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Coptic-Scriptorium/cop_scriptorium-ud-test_udpipe.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Coptic-Scriptorium/cop_scriptorium-ud-test_udpipe.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'

# Indonesian - GSD
printf 'Indonesian - GSD: %s\n' 'Train'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Indonesian-GSD/id_gsd-ud-train.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Indonesian-GSD/id_gsd-ud-train.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'

printf 'Indonesian - GSD: %s\n' 'Dev'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Indonesian-GSD/id_gsd-ud-dev.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Indonesian-GSD/id_gsd-ud-dev.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'

printf 'Indonesian - GSD: %s\n' 'Test'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Indonesian-GSD/id_gsd-ud-test.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Indonesian-GSD/id_gsd-ud-test.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'

printf 'Indonesian - GSD: %s\n' 'Test UDPipe'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Indonesian-GSD/id_gsd-ud-test_udpipe.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Indonesian-GSD/id_gsd-ud-test_udpipe.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'

# Old Church Slavonic - PROIEL
printf 'Old Church Slavonic - PROIEL: %s\n' 'Train'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Old_Church_Slavonic-PROIEL/cu_proiel-ud-train.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Old_Church_Slavonic-PROIEL/cu_proiel-ud-train.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'

printf 'Old Church Slavonic - PROIEL: %s\n' 'Dev'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Old_Church_Slavonic-PROIEL/cu_proiel-ud-dev.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Old_Church_Slavonic-PROIEL/cu_proiel-ud-dev.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'

printf 'Old Church Slavonic - PROIEL: %s\n' 'Test'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Old_Church_Slavonic-PROIEL/cu_proiel-ud-test.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Old_Church_Slavonic-PROIEL/cu_proiel-ud-test.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'

printf 'Old Church Slavonic - PROIEL: %s\n' 'Test UDPipe'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Old_Church_Slavonic-PROIEL/cu_proiel-ud-test_udpipe.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Old_Church_Slavonic-PROIEL/cu_proiel-ud-test_udpipe.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'

# Polish - PDB
printf 'Polish - PDB: %s\n' 'Train'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Polish-PDB/pl_pdb-ud-train.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Polish-PDB/pl_pdb-ud-train.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'

printf 'Polish - PDB: %s\n' 'Dev'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Polish-PDB/pl_pdb-ud-dev.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Polish-PDB/pl_pdb-ud-dev.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'

printf 'Polish - PDB: %s\n' 'Test'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Polish-PDB/pl_pdb-ud-test.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Polish-PDB/pl_pdb-ud-test.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'

printf 'Polish - PDB: %s\n' 'Test UDPipe'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Polish-PDB/pl_pdb-ud-test_udpipe.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Polish-PDB/pl_pdb-ud-test_udpipe.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'

# Sanskrit - Vedic
printf 'Sanskrit - Vedic: %s\n' 'Train'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Sanskrit-Vedic/sa_vedic-ud-train.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Sanskrit-Vedic/sa_vedic-ud-train.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'

printf 'Sanskrit - Vedic: %s\n' 'Dev'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Sanskrit-Vedic/sa_vedic-ud-dev.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Sanskrit-Vedic/sa_vedic-ud-dev.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'

printf 'Sanskrit - Vedic: %s\n' 'Test'
python encode_dep2labels.py \
  --input '/home/'"$user"'/Desktop/SuPar/data/Pruebas/SchluterEtAl/Sanskrit-Vedic/sa_vedic-ud-test.conll' \
  --output '/home/'"$user"'/Desktop/DepToLabel/data/SchluterEtAl/Sanskrit-Vedic/sa_vedic-ud-test.seq' \
  --encoding '2-planar-brackets-greedy' \
  --mtl '3-task'
