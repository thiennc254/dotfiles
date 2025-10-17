function reload --description "Reload all fish configs"
    # echo "🔁 Reloading fish configuration..."

    # 1. Reload config.fish
    if test -f ~/.config/fish/config.fish
        source ~/.config/fish/config.fish
    end

    # 2. Reload everything in conf.d
    for f in ~/.config/fish/conf.d/*.fish
        if test -f $f
            source $f
        end
    end

    # 3. Optionally reload functions (only those modified)
    for f in ~/.config/fish/functions/*.fish
        set name (basename $f .fish)
        functions -e $name
        source $f
    end

    # echo "✅ Fish configuration reloaded successfully!"
end
