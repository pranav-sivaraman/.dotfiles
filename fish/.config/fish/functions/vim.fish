function vim
    if command -q nvim
        command nvim --server $NVIM --remote $argv
    else
        command vim $argv
    end
end
