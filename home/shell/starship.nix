_: {
  programs.starship = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      palette = "catppuccin_mocha";

      format = ''
        [╭─❮ ](bold fg:overlay)$os$username$hostname $directory$git_branch$git_status$c$cpp$golang$nodejs$python$rust$nix_shell$aws$terraform$docker_context
        [╰─](bold fg:overlay)$character
      '';

      character = {
        # "➜" "❯❮" "►"
        success_symbol = "[►](fg:overlay)";
        error_symbol = "[►](bold fg:red)";
        vimcmd_symbol = "[►](bold fg:green)";
        vimcmd_replace_symbol = "[](bold fg:green)";
        vimcmd_replace_one_symbol = "[](bold fg:purple)";
        vimcmd_visual_symbol = "[](bold fg:yellow)";
      };

      os = {
        disabled = true;
        symbols = {
          Arch = " ";
          NixOS = " ";
        };
        style = "bold fg:blue";
        format = "[$symbol]($style)";
      };

      username = {
        disabled = false;
        show_always = true;
        style_user = "bold fg:red";
        format = "[ $user]($style)";
      };

      hostname = {
        disabled = false;
        ssh_only = true;
        style = "fg:blue";
        format = "@[$hostname]($style)";
      };

      directory = {
        disabled = false;
        style = "bold fg:blue";
        format = "[󰉋 $path]($style)";
        truncate_to_repo = true;
        truncation_length = 3;
        truncation_symbol = "…/";
      };

      git_branch = {
        disabled = false;
        symbol = "󰘬 ";
        style = "fg:green";
        format = " [$symbol$branch]($style) ";
      };

      git_status = {
        disabled = false;
        style = "fg:yellow";
        format = "([\\[$all_status$ahead_behind\\]]($style))";
      };

      git_state = {
        disabled = false;
        style = "bold fg:red";
        format = " \\([$state( $progress_current/$progress_total)]($style)\\) ";
      };

      git_commit = {
        disabled = true;
        commit_hash_length = 7;
        style = "fg:overlay";
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
        disabled = false;
        symbol = " ";
        style = "fg:cyan";
        format = " [$symbol$version]($style)";
      };

      nodejs = {
        disabled = false;
        symbol = " ";
        style = "fg:green";
        format = " [$symbol$version]($style)";
      };

      python = {
        disabled = false;
        symbol = " ";
        style = "fg:yellow";
        format = " [$symbol$version]($style)";
      };

      rust = {
        disabled = false;
        symbol = " ";
        style = "fg:orange";
        format = " [$symbol$version]($style)";
      };

      c = {
        disabled = false;
        symbol = " ";
        style = "fg:purple";
        format = " [$symbol$version]($style)";
      };

      cpp = {
        disabled = false;
        symbol = " ";
        style = "fg:purple";
        format = " [$symbol$version]($style)";
      };

      docker_context = {
        disabled = false;
        symbol = " ";
        style = "fg:blue";
        format = " [$symbol$context]($style)";
      };

      aws = {
        disabled = true;
        symbol = "  ";
        style = "bold fg:orange";
      };

      terraform = {
        disabled = true;
        symbol = "󱁢 ";
        style = "bold fg:purple";
      };

      cmd_duration = {
        disabled = false;
        min_time = 2000;
        format = " [⏱ $duration](bold fg:magenta)";
      };

      status = {
        disabled = false;
        format = " [✘ $status](bold fg:red)";
        map_symbol = true;
      };

      memory_usage = {
        disabled = true;
        threshold = -1;
        symbol = "󰍛 ";
        style = "bold dimmed fg:green";
      };

      time = {
        disabled = true;
        time_format = "%R";
        style = "fg:overlay";
        format = " [$time]($style)";
      };

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
