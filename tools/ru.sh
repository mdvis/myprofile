#! /usr/bin/env bash

# ------
# name: ru.sh
# author: Deve
# date: 2022-07-25
# ------

set -e
set -o pipefail

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

handlerText() {
    begin=0
    while read -r line; do
        if [[ "${line}" =~ "}" && "${begin}" == "1" ]]; then
            begin=0
        fi

        if [[ "${begin}" == "1" ]]; then
            scriptsLs[ind]=$(echo "${line}" | awk '{print $1}' | sed 's/"\(.*\)":/\1/')
            ind=$((ind + 1))
        fi

        if [[ "${line}" =~ "scripts" ]]; then
            begin=1
        fi
    done <"$1"
}

function runCmd() {
    select m in "${scriptsLs[@]}"; do
        [[ -f ".nvmrc" ]] && nvm use
        npm run "$m"
        break
    done
}

handleCmd() {
    [[ -f "./package.json" ]] || exit 1
    handlerText ./package.json
    runCmd
}

handleCmd || (cd "$(fzf)" && handleCmd)