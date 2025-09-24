#!/usr/bin/env bash

branch_symbol=""

run_segment() {
    get_tmux_cwd() {
        tmux display -p -F "#{pane_current_path}"
    }
    tmux_path=$(get_tmux_cwd)
    cd "$tmux_path" || exit
    branch="$(__parse_git_branch)"

    if [ -n "$branch" ]; then
        echo "${branch}"
    fi
    return 0
}

# Show git branch.
__parse_git_branch() {
    type git >/dev/null 2>&1

    if [ "$?" -ne 0 ]; then
        return
    fi

    #git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'

    # Quit if this is not a Git repo.
    branch=$(git symbolic-ref HEAD 2>/dev/null)

    if [[ -z $branch ]]; then
        # attempt to get short-sha-name
        branch=":$(git rev-parse --short HEAD 2>/dev/null)"
    fi

    if [ "$?" -ne 0 ]; then
        # this must not be a git repo
        return
    fi

    # Clean off unnecessary information.
    branch=${branch#refs\/heads\/}

    echo -n "#[fg=colour255,bg=colour1] ${branch_symbol} ${branch} #[default]"
}