function findnedit --description "FZF: pick file or directory, open or enter then edit"
    set -l editor $EDITOR

    set -l list_cmd
    if type -q fd
        set list_cmd "fd . --hidden --follow --exclude .git"
    else
        set list_cmd "find . -mindepth 1 -not -path '*/.git/*'"
    end

    set -l preview_cmd '
        if test -d {}
            eza -1 --icons --group-directories-first --color=always {} 2>/dev/null; or tree -C -L 1 {}
        else
            bat --style=numbers --color=always {} 2>/dev/null; or head -n 100 {}
        end
    '

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
