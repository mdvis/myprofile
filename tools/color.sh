#! /usr/bin/env bash

# ------
# name: cb.sh
# author: Deve
# date: 2022-07-25
# ------

for i in {0..255}; do
    printf "\e[38;5;%sm%3d " "$i" "$i"
    if (((i + 1) % 16 == 0)); then echo; fi
done
echo -e "\e[0m"