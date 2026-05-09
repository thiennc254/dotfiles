#------ Arch Utils ------
alias checkpkgupdate 'grep "upgraded" /var/log/pacman.log | tail -n 10'
alias checkfullupdate 'grep "starting full system upgrade" /var/log/pacman.log | tail -n 5'

alias cls clear
alias clr clear

abbr -a fish-reload __reload
abbr -a mkfile __mkfile

#------ Editor ------
alias vi nvim
alias vim nvim

#------ Zoxide ------
abbr -a z __z

#------ FZF ------
abbr -a ff __ff
abbr -a fe __find-n-edit

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

#------ Git Utils ------
abbr -a lg lazygit
abbr -a g git
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
