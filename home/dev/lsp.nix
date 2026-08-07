{pkgs, ...}: {
  home.packages = with pkgs; [
    # Lua
    lua-language-server
    stylua

    # Web (HTML, TS, CSS, Tailwind, Prettier)
    vscode-langservers-extracted
    typescript-language-server
    tailwindcss-language-server
    biome

    # Nix
    nixd
    alejandra
    statix
    deadnix

    # Python
    pyright
    ruff

    # Shell
    bash-language-server
    shfmt

    # C/C++ & Rust & Go
    clang-tools
    rust-analyzer
    gopls
    gofumpt

    # Markdown
    marksman
    markdownlint-cli2
  ];
}
