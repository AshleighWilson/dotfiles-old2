#!/usr/bin/env zsh

# Packages to Install
SOFTWARE=(
    nextcloud-client
    discord
    keepassxc
    thunderbird
    neovim
    python-pynvim
    arduino-cli
)

fpath+=$HOME/.config/zsh/functions
autoload yes_or_no

clear
echo "Installing software.."
for package in $SOFTWARE; do
    echo -n " >> Checking $package.. "
    if pacman -Qi $package &>/dev/null; then
        echo "installed."
    else
        echo -n "not found. Install? (y/N) "
        if yes_or_no; then
            pamac install $package --no-confirm

            if [[ $package = "arduino-cli" ]] then
                arduino-cli core install arduino:avr
            fi
        fi
    fi
done
