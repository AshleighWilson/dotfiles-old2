# Zinit plugin manager. To be loaded before compinit.
source ~/.zinit/bin/zinit.zsh

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# dotbare
zinit light kazhala/dotbare
export DOTBARE_DIR="$HOME/.config/dotbare"

# custom alias definitions
source $HOME/.config/zsh/aliases
