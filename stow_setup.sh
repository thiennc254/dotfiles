#!/usr/bin/bash

# Define the dotfiles directory
DOTFILES_DIR=$(cd "$(dirname "$0")" && pwd)
cd "$DOTFILES_DIR"

# Define packages/folders to ignore (separated by |)
IGNORE_PATTERN="background|notes|README|.*\.bk|.*\.bak"

for dir in */; do
    # Remove trailing slash for processing
    package=${dir%/}

    if [[ ! $package =~ ^($IGNORE_PATTERN)$ ]]; then
        # -R: Restow (useful for updating links)
        # -v: Verbose output
        # -t: Target directory (Home)
        # -n: Simulate mode
        stow -R -v -t ~ "$package"
    else
        echo "[SKIP] Ignoring package: $package"
    fi
done
