#!/usr/bin/env bash

run_segment() {
    get_tmux_cwd() {
        tmux display -p -F "#{pane_current_path}"
    }
    tcwd=$(get_tmux_cwd)
    trunc_symbol="···"
    dir=${tcwd##*/}
    local max_len="40"
    max_len=$(((max_len < ${#dir}) ? ${#dir} : max_len))
    ttcwd=${tcwd/#$HOME/\~}
    pwdoffset=$((${#ttcwd} - max_len))
    if [ ${pwdoffset} -gt "0" ]; then
        ttcwd=${ttcwd:$pwdoffset:$max_len}
        ttcwd=${trunc_symbol}/${ttcwd#*/}
    fi
    echo "#[fg=colour255,bg=colour4] $ttcwd #[default]"
    return 0
}