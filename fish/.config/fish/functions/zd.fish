# OVerride the default zd function to add an icon and print the current directory
function zd --description "Smart cd wrapper with zoxide support"
    # No argument → go home
    if test (count $argv) -eq 0
        builtin cd ~
        return
    end

    # Handle `cd -`
    if test "$argv[1]" = -
        if type -q z
            z -
        else
            builtin cd -
        end
        return
    end

    # Direct directory exists
    if test -d "$argv[1]"
        builtin cd $argv
        return
    end

    # Fallback to zoxide if available
    if type -q z
        z $argv
        and printf " \U000F17A9 "
        and pwd
        or echo "Error: Directory not found"
    else
        echo "Error: Directory not found"
    end
end
