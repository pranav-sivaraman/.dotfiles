function cat
    if command -q bat
        command bat $argv
    else
        command cat $argv
    end
end
