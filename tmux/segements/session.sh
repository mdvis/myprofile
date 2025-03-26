#!/usr/bin/env bash

run_segment() {
    tmux display-message -p "#[fg=colour255,bg=colour5] #S:#I.#P #[default]"
    return 0
}