# Zinit plugin manager. To be loaded before compinit.
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"

# dotbare
zinit light kazhala/dotbare
export DOTBARE_DIR="$HOME/.config/dotbare"

# custom alias definitions
source $HOME/.config/zsh/aliases

# Pure prompt
autoload -U promptinit; promptinit
prompt pure

PURE_PROMPT_SYMBOL="➜"
zstyle :prompt:pure:git:stash show yes
zstyle :prompt:pure:prompt:success color 'green'

# PATH env variable
path+=('/home/ashleigh/.platformio/penv/bin')
