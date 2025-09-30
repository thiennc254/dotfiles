# Shortcut config
alias scfg "source ~/.config/fish/config.fish"
alias cfgs="$EDITOR ~/.config/fish/"
alias cfghypr "$EDITOR ~/.config/hypr/"

# Fzf
alias ff "fzf --style full --preview 'bat --style=numbers --color=always {}'"

# List commands
if type -q eza
    alias ls "eza -lh --group-directories-first --icons=auto"
    alias lsa "eza -lah --group-directories-first --icons=auto"
    alias lt "eza --tree --level=2 --long --icons --git"
    alias lta "lt -a"
else
    alias ls "ls -lh --group-directories-first"
    alias lsa "ls -lah --group-directories-first"
    alias lt "tree -L 2 -aC"
    alias lta "lt -a"
end

# Tmux
alias ws join_tmux

# Directories
alias cd zd
alias .... "cd ../.."
alias zprj "mkdir -p Projects && cd ~/Projects"

# Git
alias g git
alias gst "git status"
alias ga "git add"
alias gaa "git add --all"
alias gcm "git commit -m"
alias gp "git push"

# Docker
alias d docker

# Rails
alias r rails
