function join_tmux
    if test -z "$TMUX" && type -q tmux
        if tmux has-session -t workspace 2>/dev/null
            tmux attach-session -t workspace
        else
            tmux new-session -s workspace
        end
    end
end
