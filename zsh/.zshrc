# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git 
    fzf-tab zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-history-substring-search
    you-should-use
)

source $ZSH/oh-my-zsh.sh

# Node nvm
source /usr/share/nvm/init-nvm.sh

# read config
source ~/.zsh/rc

# P10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Starship
# eval "$(starship init zsh)"
