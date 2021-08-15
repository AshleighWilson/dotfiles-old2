### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

# pure prompt
zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure
PURE_PROMPT_SYMBOL="➜"
zstyle :prompt:pure:git:stash show yes

# dotbare
zinit light kazhala/dotbare
export DOTBARE_DIR="$HOME/.config/dotbare"

# custom alias definitions
source $HOME/.config/zsh/aliases

# zsh auto complete
autoload -Uz compinit
zstyle ':completion:*' menu select
compinit
_comp_options+=(globdots)

# zsh auto suggestions
zinit light zsh-users/zsh-autosuggestions

# syntax highlighting
zinit light zsh-users/zsh-syntax-highlighting

# correct keys
bindkey "^[[3~" delete-char

# use emacs mode
bindkey -e
export KEYTIMEOUT=1
