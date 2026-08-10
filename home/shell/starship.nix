_: {
  programs.starship = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      palette = "catppuccin_mocha";

      format = ''
         $username$hostname$directory$git_branch$git_status$c$cpp$golang$nodejs$python$rust$nix_shell$docker_context$cmd_duration$time
        $character'';

      character = {
        success_symbol = " [➜](fg:blue)";
        error_symbol = " [➜](bold fg:red)";
        vimcmd_symbol = " [➜](bold fg:green)";
        vimcmd_replace_symbol = " [](bold fg:green)";
        vimcmd_replace_one_symbol = " [](bold fg:purple)";
        vimcmd_visual_symbol = " [](bold fg:yellow)";
      };

      os = {
        disabled = false;
        symbols = {
          Arch = " ";
        };
        style = "bold fg:blue";
        format = "[$symbol]($style)";
      };

      username = {
        show_always = true;
        style_user = "fg:red";
        format = "[$user]($style)";
      };

      hostname = {
        ssh_only = true;
        style = "fg:blue";
        format = "@[$hostname]($style)";
      };

      directory = {
        style = "bold fg:cyan";
        format = " [$path]($style)";
        truncate_to_repo = true;
        truncation_length = 3;
        truncation_symbol = "…/";
      };

      git_branch = {
        symbol = "󰘬 ";
        style = "fg:magenta";
        format = " [$symbol$branch]($style) ";
      };

      git_status = {
        style = "fg:yellow";
        format = "([\\[$all_status$ahead_behind\\]]($style))";
      };

      nix_shell = {
        disabled = false;
        symbol = " ";
        style = "bold fg:blue";
        format = " [$symbol$state]($style)";
        impure_msg = "impure";
        pure_msg = "pure";
      };

      golang = {
        symbol = " ";
        style = "fg:cyan";
        format = " [$symbol$version]($style)";
      };

      nodejs = {
        symbol = " ";
        style = "fg:green";
        format = " [$symbol$version]($style)";
      };

      python = {
        symbol = " ";
        style = "fg:yellow";
        format = " [$symbol$version]($style)";
      };

      rust = {
        symbol = " ";
        style = "fg:orange";
        format = " [$symbol$version]($style)";
        disabled = false;
      };

      c = {
        symbol = " ";
        style = "fg:purple";
        format = " [$symbol$version]($style)";
      };

      cpp = {
        symbol = " ";
        style = "fg:purple";
        format = " [$symbol$version]($style)";
      };

      docker_context = {
        symbol = " ";
        style = "fg:blue";
        format = " [$symbol$context]($style)";
      };

      cmd_duration = {
        min_time = 2000;
        format = " [⏱ $duration](bold fg:yellow)";
      };

      time = {
        disabled = true;
        time_format = "%R";
        style = "fg:overlay";
        format = " [$time]($style)";
      };

      # Palettes
      palettes.catppuccin_mocha = {
        bg = "#1e1e2e";
        fg = "#cdd6f4";
        base = "#11111b";
        surface = "#313244";
        overlay = "#585b70";
        red = "#f38ba8";
        orange = "#fab387";
        yellow = "#f9e2af";
        green = "#a6e3a1";
        blue = "#89b4fa";
        purple = "#cba6f7";
        cyan = "#89dceb";
        magenta = "#f5c2e7";
      };
    };
  };
}
