#! /bin/sh
# ------
# name: update branch
# author: Deve
# date: 2026-05-04
# ------

list=$(
    find ~/Code/ -maxdepth 1 -mindepth 1 -type d &&
        find ~/.myprofile/ -maxdepth 0 -type d &&
        find ~/.dvim/ -maxdepth 0 -type d &&
        find ~/.nix-config/ -maxdepth 0 -type d
)

echo "$list" | while IFS= read -r dir; do
    cd "${dir}" || { echo "${dir}: cd failed" >&2; continue; }
    [ -d ".git" ] || continue
    if [ -n "$(git status --porcelain 2>/dev/null)" ]; then
        echo "${dir} skip (local changes)" >&2
        continue
    fi
    if git fetch origin >/dev/null 2>&1 && git remote prune origin >/dev/null 2>&1 && git reset --hard "origin/$(git rev-parse --abbrev-ref HEAD)" >/dev/null 2>&1; then
        echo "${dir} ok"
    else
        echo "${dir} err" >&2
    fi
done
