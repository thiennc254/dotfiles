function join_tmux
    if test -z "$TMUX" && type -q tmux
        if tmux has-session -t NCT 2>/dev/null
            tmux attach-session -t NCT
        else
            tmux new-session -s NCT
        end
    end
end
