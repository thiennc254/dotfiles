set -gx EDITOR nvim
set -gx VISUAL $EDITOR
set -gx SUDO_EDITOR $EDITOR

set -gx MISE_QUIET 1
set -gx MISE_DISABLE_TOOLS_HINTS 1

fish_add_path $HOME/.local/bin
fish_add_path $HOME/.cargo/bin
