if test -d /opt/homebrew
    set -gx HOMEBREW_PREFIX /opt/homebrew
    set -gx HOMEBREW_CELLAR "$HOMEBREW_PREFIX/Cellar"
    set -gx HOMEBREW_REPOSITORY "$HOMEBREW_PREFIX/homebrew"
    set -gx HOMEBREW_NO_AUTO_UPDATE 1

    set -gx MANPATH "$HOMEBREW_PREFIX/share/man" $MANPATH
    set -gx INFOPATH "$HOMEBREW_PREFIX/share/info" $INFOPATH

    fish_add_path -gaP "$HOMEBREW_PREFIX/bin" "$HOMEBREW_PREFIX/opt/llvm/bin"
end
