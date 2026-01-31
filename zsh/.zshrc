export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

# plugins=(
#     git 
#     fzf-tab zsh-autosuggestions
#     zsh-syntax-highlighting
#     zsh-history-substring-search
#     you-should-use
# )

source $ZSH/oh-my-zsh.sh

# read config
source ~/.zsh/rc

# Starship
eval "$(starship init zsh)"
