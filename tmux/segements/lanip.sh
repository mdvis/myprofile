#!/usr/bin/env bash

run_segment() {
    all_nics=($(ifconfig 2>/dev/null | awk -F':' '/^[a-z]/ && !/^lo/ { print $1 }'))
    for nic in "${all_nics[@]}"; do
        ipv4s_on_nic=($(ifconfig "${nic}" 2>/dev/null | awk '$1 == "inet" { print $2 }'))
        for lan_ip in "${ipv4s_on_nic[@]}"; do
            [[ -n "${lan_ip}" ]] && break
        done
        [[ -n "${lan_ip}" ]] && break
    done

    echo "#[fg=colour255,bg=colour202] 󰌗 ${lan_ip-N/a} #[default]"
    return 0
}