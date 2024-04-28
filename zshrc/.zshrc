# CMake Settings
export CMAKE_EXPORT_COMPILE_COMMANDS=ON
export CMAKE_GENERATOR=Ninja

# Short Prompts
export PROMPT_DIRTRIM=1

# Set Editor
export EDITOR=nvim

# Setup XDG Config
export XDG_CONFIG_HOME="$HOME/.config"

# Setup Bat Theme
export BAT_THEME="rose-pine"

# Aliases
alias vim="$EDITOR"
alias lg="lazygit"
alias ls="eza --color=always --long --grid --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias cat="bat --style=plain"
alias ldd="otool -L"
alias sview="spacktivate $SPACK_ENV -v"

# Setup Spack
. ~/spack/share/spack/setup-env.sh
export PATH="$PATH:$(spack location -e dev)/.spack-env/view/bin"

if [ ! -d "$HOME/.zsh" ]; then
    mkdir -p "$HOME/.zsh"
    git clone --depth=1 https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.zsh/spaceship"
fi
source "$HOME/.zsh/spaceship/spaceship.zsh"

# Setup Terminal Plugins
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
