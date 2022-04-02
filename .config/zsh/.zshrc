# Zinit plugin manager. To be loaded before compinit.
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"

# dotbare
zinit light kazhala/dotbare
export DOTBARE_DIR="$HOME/.config/dotbare"

# custom alias definitions
source $HOME/.config/zsh/aliases

# history
export SAVEHIST=10000
export HISTSIZE=10000
export HISTFILE=~/.config/zsh/history
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt share_history

# completion
autoload -Uz compinit; compinit
zstyle ':completion:*' menu select

# Pure prompt
autoload -Uz promptinit; promptinit
prompt pure

PURE_PROMPT_SYMBOL="➜"
zstyle :prompt:pure:git:stash show yes
zstyle :prompt:pure:prompt:success color 'green'

# PATH env variable
path+=('/home/ashleigh/.platformio/penv/bin')
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=white'
ZSH_HIGHLIGHT_STYLES[alias]='fg=white'
