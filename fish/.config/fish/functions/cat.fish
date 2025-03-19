function cat
    if command -q bat
        command bat --plain --theme=rose-pine --color=always $argv
    else
        command cat $argv
    end
end
