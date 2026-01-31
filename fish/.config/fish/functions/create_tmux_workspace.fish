function create_tmux_workspace
    tmux has-session -t NCT 2>/dev/null; or tmux new-session -d -s NCT
    tmux attach -t NCT
end
