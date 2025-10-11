#!/usr/bin/env bash

run_segment() {
    local wan_ip

    if [ -z "$wan_ip" ]; then
        wan_ip=$(curl --max-time 2 -s http://whatismyip.akamai.com/)
    fi

    if [ -n "$wan_ip" ]; then
        echo "#[fg=colour255,bg=colour9] 󰖟 ${wan_ip} #[default]"
    fi

    return 0
}