# Colorize the ls output
alias ls='ls --color=auto'

# Use a long listing format
alias ll='ls -la --color=auto'

# Show hidden files
alias l.='ls -d .* --color=auto'

# CMake Settings
export CMAKE_EXPORT_COMPILE_COMMANDS=ON
export CMAKE_GENERATOR=Ninja
# 
# Short Prompts
export PROMPT_DIRTRIM=1

# Spack Settings
[ -d ~/spack ] && . ~/spack/share/spack/setup-env.sh
alias sview='spack env activate $SPACK_ENV -v '

# Set Editor
export EDITOR=$(spack location -i neovim)/bin/nvim

# Vim Alias
alias vim='$EDITOR'

# Dev Tools
spack load lazygit

