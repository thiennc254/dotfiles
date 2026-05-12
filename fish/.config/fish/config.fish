# ----------------------------------------
# Minimal & Robust fish config
# ----------------------------------------

# Disable default greeting
set -g fish_greeting

# ----------------------------------------
# Environment
# ----------------------------------------

# Editors
set -gx EDITOR nvim
set -gx VISUAL $EDITOR
set -gx SUDO_EDITOR $EDITOR

# Only set GPG_TTY for interactive shells
if status is-interactive
    set -gx GPG_TTY (tty)
end

# ----------------------------------------
# Toolchain / Runtime
# ----------------------------------------

# mise (language/runtime manager)
if type -q mise
    mise activate fish --silent-wheels | source
end

# ----------------------------------------
# Utilities
# ----------------------------------------

# zoxide (better cd)
if type -q zoxide
    zoxide init fish | source
end

# fzf (fuzzy finder)
if type -q fzf
    fzf --fish | source
end

# ----------------------------------------
# Prompt
# ----------------------------------------

if type -q starship
    starship init fish | source
end

# ----------------------------------------
# Smart tmux auto-start
# ----------------------------------------

if status is-interactive
    and not set -q TMUX
    and not set -q NO_TMUX
    and type -q tmux
    and test -z "$SSH_TTY"
    and test "$TERM" != dumb

    set -l session_name (whoami)

    if tmux has-session -t $session_name 2>/dev/null
        tmux attach -t $session_name
    else
        tmux new -s $session_name
    end

    echo "Exit Tmux !!!"
end

# ----------------------------------------
# Local machine overrides
# ----------------------------------------

# Optional local config.
# Create this file manually if you need machine-specific settings:
#   ~/.config/fish-local/config-local.fish
# (This file is not tracked in dotfiles repo)
set -l LOCAL_CONFIG ~/.config/fish-local/config-local.fish
if test -f $LOCAL_CONFIG
    source $LOCAL_CONFIG
end
