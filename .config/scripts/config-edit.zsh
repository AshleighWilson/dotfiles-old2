#!/usr/bin/env zsh

# list of config files to edit.
CONFIG_FILES=(
  "nvim - $HOME/.config/nvim/init.vim"
  "tmux - $HOME/.tmux.conf"
  "zshrc - $HOME/.config/zsh/.zshrc"
  "zshenv - $HOME/.zshenv"
  "config edit script - $HOME/.config/scripts/config-edit.zsh"
)

choice=$(printf '%s\n' "$CONFIG_FILES[@]" | rofi -dmenu -p "Edit config: ")

if [ "$choice" ]; then
  $TERM_EMULATOR -e "$EDITOR $(printf '%s\n' "${choice}" | awk '{print $NF}')"
fi
