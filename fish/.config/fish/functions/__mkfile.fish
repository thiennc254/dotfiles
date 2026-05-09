function __mkfile
    set file $argv[1]
    mkdir -p (dirname $file)
    touch $file
end
