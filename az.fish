function fsh_az_complete
    set args $argv
    $args --help  2> /dev/null \
        | grep -e '^    .*:' \
        | sed -e 's/ //g' \
        | cut -d : -f 1
end

complete -c az -d "Command" -f -a '(fsh_az_complete (commandline -co))'