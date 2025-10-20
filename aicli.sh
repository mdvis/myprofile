#! /usr/bin/env bash
# ------
# name: ai_cli.sh
# author: Deve
# date: 2025-09-20
# ------

list=(
    @google/gemini-cli
    @openai/codex
    @anthropic-ai/claude-code
    @continuedev/cli
    opencode-ai
    @qwen-code/qwen-code
    @charmland/crush
    @github/copilot
    @augmentcode/auggie
    @qodo/command
    cline
    @qoder-ai/qodercli
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
