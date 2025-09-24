#!/usr/bin/env bash

run_segment() {
    host=$(hostname -s)
    echo "#[fg=colour255,bg=colour2] ${host} #[default]"
    return 0
}