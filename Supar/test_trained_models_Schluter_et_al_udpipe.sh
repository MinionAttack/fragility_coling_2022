#!/usr/bin/env bash

source ./env/bin/activate

# Coptic - Scriptorium
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/SchluterEtAl/Coptic-Scriptorium/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/SchluterEtAl/Coptic-Scriptorium/cop_scriptorium-ud-test_udpipe.conll \
    --pred models/Pruebas_Punct/SchluterEtAl/Coptic-Scriptorium/Iteracion_"$index"/cop_scriptorium-predicted_udpipe-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Indonesian - GSD
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/SchluterEtAl/Indonesian-GSD/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/SchluterEtAl/Indonesian-GSD/id_gsd-ud-test_udpipe.conll \
    --pred models/Pruebas_Punct/SchluterEtAl/Indonesian-GSD/Iteracion_"$index"/id_gsd-predicted_udpipe-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Old Church Slavonic - PROIEL
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/SchluterEtAl/Old_Church_Slavonic-PROIEL/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/SchluterEtAl/Old_Church_Slavonic-PROIEL/cu_proiel-ud-test_udpipe.conll \
    --pred models/Pruebas_Punct/SchluterEtAl/Old_Church_Slavonic-PROIEL/Iteracion_"$index"/cu_proiel-predicted_udpipe-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"

# Polish - PDB
for index in {1..3}; do
  python -u -m supar.cmds.biaffine_dep predict --device 0 \
    --path models/Pruebas_Punct/SchluterEtAl/Polish-PDB/Iteracion_"$index"/Iteracion_"$index" \
    --data data/Pruebas/SchluterEtAl/Polish-PDB/pl_pdb-ud-test_udpipe.conll \
    --pred models/Pruebas_Punct/SchluterEtAl/Polish-PDB/Iteracion_"$index"/pl_pdb-predicted_udpipe-test.conll \
    --tree
done

printf "===================================================================================\n===================================================================================\n"
