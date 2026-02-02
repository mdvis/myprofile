#!/usr/bin/env bash

# ------
# name: install.sh
# author: Deve
# date: 2022-03-27
# ------

set -e
set -u
set -o pipefail

APP_NAME="myprofile"
APP_REPO_URI="https://github.com/mdvis/${APP_NAME}.git"
APP_PATH="${HOME}/.${APP_NAME}"
APP_CONFIG_FILE_PATH="${APP_PATH}/config_files"
APP_CONFIG_DIR_PATH="${APP_PATH}/config_dirs"
APP_FONT_PATH="${APP_PATH}/fonts"
APP_SSH_PATH="${APP_PATH}/ssh"

CONFIG_PATH="$HOME/.config/"
LOCAL_BIN_PATH="$HOME/.local/bin/"
LOCAL_FONTS_PATH="$HOME/.local/share/fonts/"
SSH_PATH="$HOME/.ssh/"
MAC_FONTS_PATH="$HOME/Library/Fonts/"

System="$(uname -s | tr '[:upper:]' '[:lower:]')"

Red='\033[0;31m'
Green='\033[0;32m'
Color_off='\033[0m'

[ ! -e "${LOCAL_BIN_PATH}" ] && mkdir -p "${LOCAL_BIN_PATH}"
[ ! -e "${CONFIG_PATH}" ] && mkdir -p "${CONFIG_PATH}"
[ ! -e "${SSH_PATH}" ] && mkdir -p "${SSH_PATH}"

msg() {
    printf '%b\n' "$1" >&2
}

success() {
    msg "${Green}[✔]${Color_off} ${1}"
}

error() {
    msg "${Red}[✘]${Color_off} ${1}${2}"
    exit 1
}

ln_if() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
}

getFile() {
    local dir_name=$1
    /usr/bin/find "${dir_name}" -maxdepth 1 -type f
}

getDir() {
    local dir_name=$1
    /usr/bin/find "${dir_name}" -maxdepth 1 -type d
}

handler() {
    local file
    local path_name="$1"
    local target_dir="$2"
    local typ="$3"
    local dir_list

    if [[ "${typ}" == "f" ]]; then
        dir_list=$(getFile "${path_name}")
    else
        dir_list=$(getDir "${path_name}")
    fi

    for i in ${dir_list}; do
        file=$(basename "$i")
        backup "${target_dir}${file%.sh}"
        ln_if "${path_name}/${file}" "${target_dir}${file%.sh}"
        success "Link $file!"
    done

    success "Link done!"
}

syncRepo() {
    local repo_path="$1"
    local repo_uri="$2"
    local name

    if [ ! -e "$repo_path" ]; then
        mkdir -p "$repo_path"
        git clone --depth 1 "$repo_uri" "$repo_path"
    else
        cd "$repo_path" && git fetch origin && git reset --hard origin/main
    fi

    name=$(basename "${repo_uri%.git}")

    success "Clone $name done!"
}

backup() {
    local list
    local time

    list="$*"
    time=$(date +%s)

    for i in $list; do
        if [[ -e "${i}" ]]; then
            mv "${i}" "${i}.${time}.backup"
        fi

        success "Backup $i done!"
    done
}

install_fonts() {
    if [ "${System}" == "darwin" ]; then
        mkdir -p "$MAC_FONTS_PATH"

        cp -r "$APP_FONT_PATH"/* "$MAC_FONTS_PATH"
    else
        mkdir -p "$LOCAL_FONTS_PATH"
        cp -r "$APP_FONT_PATH"/* "$LOCAL_FONTS_PATH"
        fc-cache -fv >/dev/null
    fi
    success "Font done!"
}

syncRepo "$APP_PATH" "$APP_REPO_URI"

cd "$APP_PATH" || exit

command -v pacman &>/dev/null && . "${APP_PATH}/setup-arch.sh"
command -v yay &>/dev/null && . "${APP_PATH}/setup-aur.sh"
command -v apt &>/dev/null && . "${APP_PATH}/setup-apt.sh"

install_fonts

curl -sS https://starship.rs/install.sh | sh
curl -LsSf https://astral.sh/uv/install.sh | sh

handler "$APP_SSH_PATH" "$SSH_PATH" "f" || error "Failed to link ssh!"
handler "$APP_CONFIG_FILE_PATH" "$HOME/." "f" || error "Failed to link config file!"
handler "$APP_CONFIG_DIR_PATH" "$CONFIG_PATH" "d" || error "Failed to link config dir!"
