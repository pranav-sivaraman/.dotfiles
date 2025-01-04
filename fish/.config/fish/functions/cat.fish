function cat
    if command -q bat
        command bat --theme=rose-pine --color=always $argv
    else
        command cat $argv
    end
end
