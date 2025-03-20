#! /usr/bin/env bash

# ------
# name: cb.sh
# author: Deve
# date: 2022-07-25
# ------

function changeBranch() {
    branchName="$(git branch -a | fzf)"
    git checkout "${branchName##* }"
}

if [ -d "./.git" ]; then
    changeBranch
else
    echo "No repository!"
fi
