#------ Arch Utils ------
abbr -a checkpkgupdate 'grep "upgraded" /var/log/pacman.log | tail -n 10'
abbr -a checkfullupdate 'grep "starting full system upgrade" /var/log/pacman.log | tail -n 5'

abbr -a cls clear
abbr -a clr clear

abbr -a fishreload __reload
abbr -a mkfile __mkfile
abbr -a hyprreload "hyprctl reload"

#------ Editor ------
abbr -a v nvim
abbr -a v. "nvim ."

#------ Zoxide ------
abbr -a z __z

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

#------ Tmux ------
abbr -a tws "tmux a -t $(whoami)"
