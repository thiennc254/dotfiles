{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    neovim
    tree-sitter
  ];

  home.file.".config/nvim" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/configs/nvim";
  };
}
