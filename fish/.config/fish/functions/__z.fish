function __z --description "Zoxide show path"
    if functions -q __zoxide_z
        __zoxide_z $argv

        if test $status -eq 0; and test (count $argv) -gt 0
            set_color cyan
            printf " \U000F17A9 "
            set_color normal

            set_color -u purple
            echo $PWD
            set_color normal
        end
    else
        builtin cd $argv
    end
end
