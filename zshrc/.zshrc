# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Setup XDG Config
XDG_CONFIG_HOME="$HOME/.config"

# Setup zinit home
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
 
# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Download Spack, if it's not there yet
if [ ! -d "$HOME/spack" ]; then
  git clone -c feature.manyFiles=true https://github.com/spack/spack.git
fi

# Setup Spack
source "$HOME/spack/share/spack/setup-env.sh"

# Dev Tools
#spack load neovim zoxide fzf ripgrep fd eza lazygit stow npm python@3.11 bat cmake ninja/kr mold ccache
export PATH="$PATH:$(spack location -e dev)/.spack-env/view/bin"
export EDITOR=nvim

# Add in Powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light Aloxaf/fzf-tab

# Load completions
autoload -Uz compinit && compinit
zinit cdreplay -q

# History Env Vars
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase

# History Options
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Setup Aliases
type "nvim" &>/dev/null && alias vim="nvim"
type "lazygit" &>/dev/null && alias lg="lazygit"
type "eza" &>/dev/null && alias ls="eza --color=always --icons=always"
type "bat" &>/dev/null && alias cat="bat --style=plain"
[ "$(uname)" = "Darwin" ] && alias ldd="otool -L"
alias sview="spacktivate $SPACK_ENV -v"

# Setup Shell Integrations
type "fzf" &>/dev/null && eval "$(fzf --zsh)"
type "zoxide" &>/dev/null && eval "$(zoxide init --cmd cd zsh)"
 
# Completion styling
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'
 
# CMake Settings
export CMAKE_EXPORT_COMPILE_COMMANDS=ON
export CMAKE_GENERATOR=Ninja

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
