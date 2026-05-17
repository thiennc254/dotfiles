# ----------------------------------------
# Minimal & Robust fish config
# ----------------------------------------

# Disable default greeting
set -g fish_greeting

# Load theme
fish_config theme choose catppuccin-mocha

# ----------------------------------------
# Local machine overrides
# ----------------------------------------

# Optional local config.
# ~/.config/fish-local/config-local.fish
set -l LOCAL_CONFIG ~/.config/fish-local/config-local.fish
if test -f $LOCAL_CONFIG
    source $LOCAL_CONFIG
end
