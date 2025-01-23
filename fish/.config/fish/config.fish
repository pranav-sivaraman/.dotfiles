if test -d /opt/homebrew
    set -gx HOMEBREW_PREFIX /opt/homebrew
    set -gx HOMEBREW_CELLAR "$HOMEBREW_PREFIX/Cellar"
    set -gx HOMEBREW_REPOSITORY "$HOMEBREW_PREFIX/homebrew"
    set -gx HOMEBREW_NO_AUTO_UPDATE 1

    fish_add_path -gP "$HOMEBREW_PREFIX/bin" "$HOMEBREW_PREFIX/sbin"
    fish_add_path -gP "$HOMEBREW_PREFIX/opt/llvm/bin" "$HOMEBREW_PREFIX/sbin"

    ! set -q MANPATH; and set MANPATH ''
    set -gx MANPATH "$HOMEBREW_PREFIX/share/man" $MANPATH

    ! set -q INFOPATH; and set INFOPATH ''
    set -gx INFOPATH "$HOMEBREW_PREFIX/share/info" $INFOPATH
end

if status is-interactive
    and not set -q TMUX
    and command -q tmux
    tmux new-session -A -s home
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
. ~/spack/share/spack/setup-env.fish
