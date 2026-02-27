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
    mise activate fish | source
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

# ----------------------------------------
# Smart tmux auto-start
# ----------------------------------------

if status is-interactive
    # Conditions to start tmux:
    # - Not already inside tmux
    # - Not inside SSH
    # - Running on a real TTY
    # - tmux exists
    if type -q tmux
        if not set -q TMUX
            if test -z "$SSH_TTY"
                if test -n "$TERM" -a "$TERM" != dumb
                    set -l session (whoami)
                    tmux has-session -t $session 2>/dev/null
                    and exec tmux attach -t $session
                    or exec tmux new -s $session
                end
            end
        end
    end
end
