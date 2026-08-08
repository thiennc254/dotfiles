set -gx EDITOR nvim
set -gx VISUAL $EDITOR
set -gx SUDO_EDITOR $EDITOR

set -gx MISE_QUIET true
set -gx MISE_DISABLE_TOOLS_HINTS true

fish_add_path $HOME/.local/bin
fish_add_path $HOME/.cargo/bin
