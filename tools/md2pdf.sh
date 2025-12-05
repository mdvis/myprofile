#!/bin/bash
# ------
# name: md2pdf.sh
# author: Deve
# date: 2025-11-28
# ------

find . -type f -name "*.md" -depth 1 -exec pandoc --pdf-engine=xelatex -V mainfont="SMS" {} -o {}.pdf \;
