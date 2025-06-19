set -gx EDITOR nvim

set -gx CMAKE_EXPORT_COMPILE_COMMANDS ON
set -gx CMAKE_GENERATOR Ninja

if command -q ccache
    set -gx CMAKE_C_COMPILER_LAUNCHER ccache
    set -gx CMAKE_CXX_COMPILER_LAUNCHER ccache
else if command -q sccache
    set -gx CMAKE_C_COMPILER_LAUNCHER sccache
    set -gx CMAKE_CXX_COMPILER_LAUNCHER sccache
end
