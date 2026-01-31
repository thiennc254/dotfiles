function findnedit --description 'FZF: pick file or directory, open or enter then edit'
    set -l editor $EDITOR

    set -l list_cmd
    if type -q fd
        set list_cmd "fd . --hidden --follow --exclude .git"
    else
        set list_cmd "find . -mindepth 1 -not -path '*/.git/*'"
    end

    set -l preview_cmd 'bash -c "
        if [ -d {} ]; then
            if command -v eza >/dev/null 2>&1; then
                eza -1 --icons --group-directories-first --color=always {} 2>/dev/null
            else
                tree -C -L 1 {}
            fi
        else
            if command -v bat >/dev/null 2>&1; then
                bat --style=numbers --color=always {} 2>/dev/null
            else
                head -n 100 {}
            fi
        fi
    "'

    set -l target (eval $list_cmd | fzf \
        --prompt="📂 Search > " \
        --style=full \
        --height=80% --layout=reverse --border \
        --preview="$preview_cmd" --preview-window=right:60%:wrap \
        --select-1 --exit-0)

    test -n "$target"; or return

    if test -d "$target"
        cd "$target"
        # command $editor
    else
        command $editor "$target"
    end
end
