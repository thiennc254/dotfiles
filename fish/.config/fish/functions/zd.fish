# OVerride the default zd function to add an icon and print the current directory
function zd
    if test (count $argv) -eq 0
        builtin cd ~
        return
    else if test $argv[1] = -
        # Special case for "cd -"
        z -
        return
    else if test -d $argv[1]
        builtin cd $argv[1]
        return
    else
        z $argv
        and printf " \U000F17A9 "
        and pwd
        or echo "Error: Directory not found"
    end
end
