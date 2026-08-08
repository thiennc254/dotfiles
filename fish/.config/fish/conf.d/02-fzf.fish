# fzf.fish
set fzf_fd_opts --hidden --exclude .git

# Sử dụng fd thay cho find để nhanh và bỏ qua rác
set -gx FZF_DEFAULT_COMMAND "fd --type f --strip-cwd-prefix --hidden --exclude .git"
set -gx FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"

# Giao diện tối giản theo tone màu Catppuccin Mocha
set -gx FZF_DEFAULT_OPTS "
  --height 65% 
  --layout=reverse 
  --border=sharp
  --prompt=' ' 
  --pointer=' ' 
  --marker='󰄵 '
  --info=inline
  --color='bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8'
  --color='fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc'
  --color='marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8'
"

# Preview nhanh cho file và thư mục
set -gx FZF_CTRL_T_OPTS "--preview 'bat --color=always --line-range :50 {}'"
set -gx FZF_ALT_C_OPTS "--preview 'eza --tree --color=always {} | head -50'"
