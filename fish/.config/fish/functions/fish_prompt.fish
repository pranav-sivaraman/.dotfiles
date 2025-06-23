function fish_prompt
    set prompt_dir (path basename $PWD)

    if set -q SSH_CONNECTION
        set prompt_host (hostname)
        set_color yellow
        echo -n "$prompt_host:$prompt_dir"
        set_color normal
    else
        set_color $fish_color_cwd
        echo -n $prompt_dir
        set_color normal
    end

    echo -n ' ) '
end
