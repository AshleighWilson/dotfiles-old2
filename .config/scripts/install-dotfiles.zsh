#!/usr/bin/env zsh

# Install zinit, a ZSH plugin manager
mkdir ~/.zinit
git clone https://github.com/zdharma/zinit.git ~/.zinit/bin
source ~/.zinit/bin/zinit.zsh
zinit self-update

# Clone dot files
git clone https://github.com/AshleighWilson/dotfiles.git ~
git --git-dir=$HOME/.config/dotbare remote set-url origin git@github.com:AshleighWilson/dotfiles.git
