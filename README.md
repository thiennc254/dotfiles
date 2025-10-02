# 🛠️ Dotfiles

## 📌 Overview

Personal configuration customized based on [Omarchy](https://omarchy.org/) TokyoNight Theme with modifications to Waybar.

![Screen1](snaps/snap1.png)

![Screen2](snaps/snap2.png)

![Screen3](snaps/snap3.png)

![Screen4](snaps/snap4.png)

![Screen5](snaps/snap5.png)

![Screen6](snaps/snap6.png)

## 📦 Requirements

Make sure the following tools are installed:

- `nvim`
- `zsh` or `fish`
- `tmux` and `tpm` (tmux plugin manager)
- `Oh-My-Zsh` or `Starship`
- `stow`
- `fisher` if using fish

## 🚀 Installation

Clone the repository and use `stow` to set up the desired modules:

```sh
git clone https://github.com/thiennc254/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Example: install Neovim, Zsh, tmux, and Starship configs
stow nvim zsh tmux starship
```
