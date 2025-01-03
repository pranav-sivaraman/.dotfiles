function vim
    if command -q nvim
        command nvim $argv
    else
        command vim $argv
    end
end
