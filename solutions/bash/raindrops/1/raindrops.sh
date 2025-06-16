#!/usr/bin/env bash

result=""

if (("$1" % 3 == 0)); then
  result=${result}Pling
fi

if (("$1" % 5 == 0)); then
  result=${result}Plang
fi

if (("$1" % 7 == 0)); then
  result=${result}Plong
fi

echo ${result:-$1}
