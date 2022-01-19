#!/usr/bin/env zsh

# Install zinit, a ZSH plugin manager
#
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
mkdir -p "$(dirname $ZINIT_HOME)"
git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"
zinit self-update

# Clone dot files
export DOTBARE_DIR="$HOME/.config/dotbare"
export DOTBARE_TREE="$HOME"
zinit light kazhala/dotbare 
dotbare finit -u https://github.com/AshleighWilson/dotfiles.git
git --git-dir=$HOME/.config/dotbare remote set-url origin git@github.com:AshleighWilson/dotfiles.git
