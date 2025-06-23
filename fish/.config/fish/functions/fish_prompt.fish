function fish_prompt
    if set -q SSH_CONNECTION
        set_color $fish_color_host
        set prompt_user (id -un)
        set prompt_host (hostname)
        echo -n "$prompt_user@$prompt_host:"
    end

    set_color $fish_color_cwd
    set prompt_dir (path basename $PWD)
    echo -n $prompt_dir

    set_color normal
    echo -n ' ) '
end
