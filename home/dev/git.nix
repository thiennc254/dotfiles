_: {
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "thiennc254";
        email = "thiennc254.work@gmail.com";
      };

      init = {
        defaultBranch = "main";
      };

      pull = {
        rebase = true;
      };

      safe = {
        directory = [
          "/home/azty/dotfiles"
          "*"
        ];
      };
    };
  };

  programs.lazygit = {
    enable = true;
    settings = {
      gui = {
        theme = {
          lightTheme = false;
          activeBorderColor = [
            "cyan"
            "bold"
          ];
          inactiveBorderColor = ["white"];
        };
      };
    };
  };
}
