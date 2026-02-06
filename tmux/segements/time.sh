#!/usr/bin/env bash

run_segment() {
    time="$(date '+%H:%M')"
    echo "#[fg=colour0,bg=colour255]  ${time} #[default]"
    return 0
}