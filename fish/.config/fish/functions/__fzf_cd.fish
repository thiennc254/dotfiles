function __fzf_cd
    set dir (fd --type d . | fzf)  # dùng fd + fzf để chọn thư mục
    if test -n "$dir"
        cd "$dir"
        commandline -f repaint
    end
end

