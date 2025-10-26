#------ Arch Utils ------
alias checkpkgupdate 'grep "upgraded" /var/log/pacman.log | tail -n 10'
alias checkfullupdate 'grep "starting full system upgrade" /var/log/pacman.log | tail -n 5'
alias cls clear
alias clr clear

#------ Editor ------
alias vi nvim
alias vim nvim

#------ Tmux ------
alias tws create_tmux_workspace

#------ FZF ------
alias ff 'set -l dir (fd . -td --hidden --follow -E .git | fzf --style full --preview "eza -1 --icons --group-directories-first --color=always {}" --height=80% --layout=reverse --border --select-1 --exit-0); and test -n "$dir"; and cd "$dir"'
alias fe findnedit

#------ List commands ------
if type -q eza
    alias ls "eza -lh --group-directories-first --icons=auto"
    alias lsa "eza -lah --group-directories-first --icons=auto"
    alias lt "eza --tree --level=2 --long --icons --git"
    alias lta "lt -a"
else
    alias ls "ls -lh --group-directories-first"
    alias lsa "ls -lah --group-directories-first"
    alias lt "tree -L 2 -C"
    alias lta "lt -a"
end

#------ Change Directories ------
alias cd zd
alias .... "cd ../.."
alias zws "mkdir -p ~/Workspace && cd ~/Workspace"

#------ Git Utils ------
alias lg lazygit
alias g git
abbr -a gst 'git status'
abbr -a ga 'git add'
abbr -a gaa 'git add --all'
abbr -a gcm 'git commit -m'
abbr -a gp 'git push'
abbr -a gpl 'git pull --rebase'
abbr -a gco 'git checkout'
abbr -a gcb 'git checkout -b'

#------ Docker ------
alias d docker

#------ Rails ------
alias r rails
