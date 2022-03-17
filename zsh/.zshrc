ZSH=/usr/share/oh-my-zsh/
COMPLETION_WAITING_DOTS="true"
plugins=(git)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias l="exa -la"
alias ls="exa"
alias vim="nvim"
alias cat="bat"
alias gs="git status"

eval "$(starship init zsh)"
