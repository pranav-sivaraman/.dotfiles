# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git history)
source $ZSH/oh-my-zsh.sh

# Colorize the ls output
alias ls="ls --color=auto"

# Use a long listing format
alias ll="ls -la --color=auto"

# Show hidden files
alias l.="ls -d .* --color=auto"

# CMake Settings
export CMAKE_EXPORT_COMPILE_COMMANDS=ON
export CMAKE_GENERATOR=Ninja

# Short Prompts
export PROMPT_DIRTRIM=1

# Set Editor
export EDITOR=nvim

# Setup XDG Config
export XDG_CONFIG_HOME="$HOME/.config"

# Setup Zoxide
eval "$(zoxide init --cmd cd zsh)"

# Setup Bat Theme
export BAT_THEME="rose-pine"

# Aliases
alias vim="$EDITOR"
alias lg="lazygit"
alias cat="bat --style=plain"
alias ldd="otool -L"
alias sview="spacktivate $SPACK_ENV -v"

# Setup Spack
export SPACK_SKIP_MODULES="true"
source /Users/pranav/Documents/Research/performance_portability/spack/share/spack/setup-env.sh
source /Users/pranav/Documents/Research/performance_portability/ramble/share/ramble/setup-env.sh

# Homebrew Setup
export PATH="/opt/homebrew/opt/ccache/libexec:/opt/homebrew/bin:/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.12/libexec/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/share/opt-viewer:$PATH"
export LD_LIBRARY_PATH="/opt/homebrew/lib:/opt/homebrew/llvm/lib:$LD_LIBRARY_PATH"

# Omniperf Module
export PATH="/Users/pranav/Documents/Research/performance_portability/omniperf/2.0.0-RC1/bin:$PATH"
export PYTHONPATH="/Users/pranav/Documents/Research/performance_portability/omniperf/python-libs/"

export CPATH="/opt/homebrew/include:$CPATH"
export LIBRARY_PATH="/opt/homebrew/lib:$CPATH"


export CC=clang
export CXX=clang++

export PATH=$PATH:/Users/pranav/.spicetify
