if test -d /usr/share/Modules/init
    set -gx MODULES_PREFIX /usr/share/Modules/init
    source "$MODULES_PREFIX/fish"
end
