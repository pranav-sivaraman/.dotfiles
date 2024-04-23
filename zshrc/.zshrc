# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git history)
source $ZSH/oh-my-zsh.sh

# CMake Settings
export CMAKE_EXPORT_COMPILE_COMMANDS=ON
export CMAKE_GENERATOR=Ninja

# Short Prompts
export PROMPT_DIRTRIM=1

# Set Editor
export EDITOR=nvim

# Setup XDG Config
export XDG_CONFIG_HOME="$HOME/.config"

# Setup Terminal Plugins
eval "$(zoxide init --cmd cd zsh)"
eval "$(fzf --zsh)"

# Setup Bat Theme
export BAT_THEME="rose-pine"

# Aliases
alias vim="$EDITOR"
alias lg="lazygit"
alias ls="eza --color=always --long --grid --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias cat="bat --style=plain"
alias ldd="otool -L"
alias sview="spacktivate $SPACK_ENV -v"

# Setup Spack and Ramble
export SPACK_SKIP_MODULES="true"
source /Users/pranav/Documents/Research/performance_portability/spack/share/spack/setup-env.sh
source /Users/pranav/Documents/Research/performance_portability/ramble/share/ramble/setup-env.sh

# Homebrew Setup
export PATH="/opt/homebrew/opt/ccache/libexec:/opt/homebrew/bin:/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.12/libexec/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/share/opt-viewer:$PATH"
export PATH="/opt/homebrew/opt/make/libexec/gnubin/:$PATH"
export LD_LIBRARY_PATH="/opt/homebrew/lib:/opt/homebrew/llvm/lib:$LD_LIBRARY_PATH"

# C++ Env Var Setup
export CPATH="/opt/homebrew/opt/llvm/include:/opt/homebrew/include:$CPATH"
export LIBRARY_PATH="/opt/homebrew/opt/llvm/lib:/opt/homebrew/lib:$LIBRARY_PATH"

export CC=clang
export CXX=clang++

export PATH=$PATH:/Users/pranav/.spicetify
