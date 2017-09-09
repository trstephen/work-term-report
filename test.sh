#!/bin/bash

function check_pass() {
    if [ $? -ne 0 ]; then
      printf "\n======================\n"
      printf " ✗  $1 failed\n"
      printf "======================\n\n"
      exit 1
    else
      printf "\n======================\n"
      printf " ✔  $1 passed\n"
      printf "======================\n\n"
    fi
}

# build the report and letter
make

check_pass "Report build"

# Use chktex for a lint check
cd template
chktex -W # echo version
chktex wt_template.tex letter/letter_of_transmittal.tex

check_pass "Linter"
