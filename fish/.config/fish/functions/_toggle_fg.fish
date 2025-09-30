function _toggle_fg
    if jobs 2>/dev/null
        commandline -r fg
        commandline -f execute
        clear
    end
end
