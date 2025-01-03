function ll --wraps=ls --description 'List contents of directory using long format'
    if command -q eza
        command eza -lh --icons=always $argv
    else
        ls -lh $argv
    end
end
