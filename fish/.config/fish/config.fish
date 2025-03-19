if test -d /opt/homebrew
    set -gx HOMEBREW_PREFIX /opt/homebrew
    set -gx HOMEBREW_CELLAR "$HOMEBREW_PREFIX/Cellar"
    set -gx HOMEBREW_REPOSITORY "$HOMEBREW_PREFIX/homebrew"
    set -gx HOMEBREW_NO_AUTO_UPDATE 1

    fish_add_path -gaP "$HOMEBREW_PREFIX/bin" "$HOMEBREW_PREFIX/sbin"
    fish_add_path -gaP "$HOMEBREW_PREFIX/opt/llvm/bin" "$HOMEBREW_PREFIX/sbin"

    ! set -q MANPATH; and set MANPATH ''
    set -gx MANPATH "$HOMEBREW_PREFIX/share/man" $MANPATH

    ! set -q INFOPATH; and set INFOPATH ''
    set -gx INFOPATH "$HOMEBREW_PREFIX/share/info" $INFOPATH
end

if test -d $HOME/.local
    fish_add_path -gaP "$HOME/.local/bin"
end

if test -d $HOME/spack
    . $HOME/spack/share/spack/setup-env.fish

    set -gx DEV_PREFIX "$HOME/.dotfiles/dev/.spack-env/view"
    if test -d $DEV_PREFIX
      fish_add_path -gaP "$DEV_PREFIX/bin"
    end
end

if test -d $HOME/ramble
    . $HOME/ramble/share/ramble/setup-env.fish
end

set -gx CMAKE_EXPORT_COMPILE_COMMANDS ON
set -gx CMAKE_GENERATOR Ninja

if command -q ccache
    set -gx CMAKE_C_COMPILER_LAUNCHER ccache
    set -gx CMAKE_CXX_COMPILER_LAUNCHER ccache
end

if command -q sccache
    set -gx CMAKE_C_COMPILER_LAUNCHER sccache
    set -gx CMAKE_CXX_COMPILER_LAUNCHER sccache
end

set -gx EDITOR nvim

zoxide init --cmd cd fish | source

if test -d /usr/share/Modules/init
    set -gx MODULES_PREFIX /usr/share/Modules/init
    . "$MODULES_PREFIX/fish"
end
