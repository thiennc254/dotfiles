function __ff --description "Smart find directory and cd"
    set -l dir (fd . -td --hidden --follow -E .git | fzf \
        --style full \
        --preview "eza -1 --icons --group-directories-first --color=always {}" \
        --height=80% --layout=reverse --border --select-1 --exit-0)

    if test -n "$dir"
        cd "$dir"
    end
end
