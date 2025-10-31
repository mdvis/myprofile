#! /usr/bin/env bash
# ------
# name: ai_cli.sh
# author: Deve
# date: 2025-09-20
# ------

list=(
    @qwen-code/qwen-code
    @charmland/crush
    @github/copilot
    @google/gemini-cli
    @anthropic-ai/claude-code
    @openai/codex
    @iflow-ai/iflow-cli
)

install() {
    for pkg in "${list[@]}"; do
        npm i -g "$pkg"
    done
}

remove() {
    for pkg in "${list[@]}"; do
        npm un -g "$pkg"
    done
}

if [[ "$1" = "install" ]]; then
    install
fi

if [[ "$1" = "remove" ]]; then
    remove
fi
