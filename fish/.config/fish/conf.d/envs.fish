switch (uname)
    case Linux
        set -Ux PATH $HOME/.local/bin $PATH
        # XDG config directory
        set -x XDG_CONFIG_HOME $HOME/.config
        set -x PATH $HOME/.cargo/bin $PATH
end

# fzf  show hidden files by default
set fzf_fd_opts --hidden --exclude .git
