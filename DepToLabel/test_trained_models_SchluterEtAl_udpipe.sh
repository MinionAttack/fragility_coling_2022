#!/usr/bin/env bash

source ./venv/bin/activate

# Coptic - Scriptorium
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/SchluterEtAl/Coptic-Scriptorium/cop_scriptorium-ud-test_udpipe.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/SchluterEtAl/Coptic-Scriptorium/cop_scriptorium-ud-test_udpipe.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Coptic-Scriptorium/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Coptic-Scriptorium/Iteracion_"$index"/cop_scriptorium-predicted-test_udpipe.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Coptic-Scriptorium/Iteracion_"$index"/decode_udpipe.log
done

# Indonesian - GSD
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/SchluterEtAl/Indonesian-GSD/id_gsd-ud-test_udpipe.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/SchluterEtAl/Indonesian-GSD/id_gsd-ud-test_udpipe.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Indonesian-GSD/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Indonesian-GSD/Iteracion_"$index"/id_gsd-predicted-test_udpipe.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Indonesian-GSD/Iteracion_"$index"/decode_udpipe.log
done

# Old Church Slavonic - PROIEL
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/SchluterEtAl/Old_Church_Slavonic-PROIEL/cu_proiel-ud-test_udpipe.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/SchluterEtAl/Old_Church_Slavonic-PROIEL/cu_proiel-ud-test_udpipe.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Old_Church_Slavonic-PROIEL/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Old_Church_Slavonic-PROIEL/Iteracion_"$index"/cu_proiel-predicted-test_udpipe.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Old_Church_Slavonic-PROIEL/Iteracion_"$index"/decode_udpipe.log
done

# Polish - PDB
for index in {1..3}; do
  python decode.py --test /home/iago/Escritorio/DepToLabel/data/SchluterEtAl/Polish-PDB/pl_pdb-ud-test_udpipe.seq \
    --gold /home/iago/Escritorio/DepToLabel/data/SchluterEtAl/Polish-PDB/pl_pdb-ud-test_udpipe.conll \
    --model /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Polish-PDB/Iteracion_"$index"/model \
    --gpu True \
    --output /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Polish-PDB/Iteracion_"$index"/pl_pdb-predicted-test_udpipe.conll \
    --encoding 2-planar-brackets-greedy \
    --ncrfpp /home/iago/Escritorio/DepToLabel |
    tee /home/iago/Escritorio/DepToLabel/trained_models/SchluterEtAl/Polish-PDB/Iteracion_"$index"/decode_udpipe.log
done
