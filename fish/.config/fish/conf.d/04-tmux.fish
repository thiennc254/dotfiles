if status is-interactive
    and not set -q TMUX
    and not set -q NO_TMUX
    and type -q tmux
    and test -z "$SSH_TTY"
    and test "$TERM" != dumb

    set -l session_name (whoami)

    # tmux attach -t $session_name 2>/dev/null; or tmux new -s $session_name
    tmux has-session -t $session_name 2>/dev/null; or tmux new-session -d -s $session_name
end
