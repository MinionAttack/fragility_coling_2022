#!/usr/bin/env bash

# Ancient_Greek - Perseus
for index in {1..3}; do
  python conll18_ud_eval.py -v \
  Gold/SyntacticPointer/Ancient_Greek-Perseus/grc_perseus-test.conll \
  Predicted/SyntacticPointer/Ancient_Greek-Perseus/grc_perseus-iteracion_"$index"-predicted-test.conll
done
