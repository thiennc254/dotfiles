switch (uname)
    case Linux
        set -x PATH ./bin $HOME/.local/bin $PATH
        # XDG config directory
        set -x XDG_CONFIG_HOME $HOME/.config
        set -x PATH $HOME/.cargo/bin $PATH
end
