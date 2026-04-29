#!/bin/bash
# ------
# name: up.sh
# author: Deve
# date: 2026-04-26
# ------

list=("$HOME/.myprofile" "$HOME/.dvim" "$HOME/.nix-config")

for item in "${list[@]}"; do
  [ -d "$item" ] && (cd "$item" && git pull && git push )
done
