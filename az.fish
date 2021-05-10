function fsh_az_complete_commands
    set args (string trim -r $argv)
    set res (az $args[2..] --help  2> /dev/null \
        | egrep '^[[:space:]]{4}[a-zA-Z\-]{1,}.*[[:space:]]{1,}:' \
        | sed -e 's/^    //g' \
        | cut -d ' ' -f 1)
    for i in $res[2..];
        echo $i
    end
end

complete -c az -d "Command" -f -a '(fsh_az_complete_commands (commandline -co))'
