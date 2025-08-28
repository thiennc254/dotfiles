# Dotfiles

```sh
 ██████   █████   █████████  ███████████
░░██████ ░░███   ███░░░░░███░█░░░███░░░█
 ░███░███ ░███  ███     ░░░ ░   ░███  ░ 
 ░███░░███░███ ░███             ░███    
 ░███ ░░██████ ░███             ░███    
 ░███  ░░█████ ░░███     ███    ░███    
 █████  ░░█████ ░░█████████     █████   
░░░░░    ░░░░░   ░░░░░░░░░     ░░░░░    
```

---

## Cài đặt

1. Clone repo và đặt trong thư mục $HOME
2. Install package:

```sh
nvim
zsh
starship
tmux
tpm
stow
```

3. Tiến hành tạo symlink

```sh
cd ~/dotfiles
stow <package>

example:
stow nvim
stow zsh
stow tmux
stow starship
```

4. Reload terminal
