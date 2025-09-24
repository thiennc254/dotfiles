set fish_greeting ""
set -gx TERM xterm-256color

set -gx EDITOR nvim
set -gx SUDO_EDITOR $EDITOR
set -gx GPG_TTY (tty)

# zoxide
if type -q zoxide
    zoxide init fish | source
end

# mise
if type -q mise
    mise activate fish | source
end

# fzf
if type -q fzf
    fzf --fish | source
end

# starship
if type -q starship
    starship init fish | source
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
    source $LOCAL_CONFIG
end
