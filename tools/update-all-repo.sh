#!/bin/bash
# ------
# name: update.sh
# author: Deve
# date: 2025-11-30
# ------

find . -type d -maxdepth 1 -mindepth 1 -exec sh -c "cd {} && git pull" \;

