if status is-interactive
    # GPG
    set -gx GPG_TTY (tty)

    # mise
    if type -q mise
        mise activate fish | source
    end

    # zoxide
    if type -q zoxide
        zoxide init fish | source
    end

    # fzf
    if type -q fzf
        fzf --fish | source
    end

    # Prompt (Starship)
    if type -q starship
        starship init fish | source
    end
end
