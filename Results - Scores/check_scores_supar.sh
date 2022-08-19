#!/usr/bin/env bash

# Ancient_Greek - Perseus
for index in {1..3}; do
  python3 conll18_ud_eval.py -v \
  Gold/SuPar/Ancient_Greek-Perseus/grc_perseus-ud-test.conll \
  Predicted/SuPar/Ancient_Greek-Perseus/grc_perseus-iteracion_"$index"-predicted-test.conll
done
