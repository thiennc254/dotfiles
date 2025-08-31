local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- [Select all]
keymap.set("n", "<C-a>", "gg<S-v>G")

-- [Tmux - Vim Navigator]
keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts)
keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", opts)
keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", opts)
keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", opts)

-- [Highlight]
keymap.set("n", "<leader>h", ":nohlsearch<CR>", opts)

-- [Command mode]
keymap.set("n", ";", ":")

-- Open File Explorer - Snack
-- ~/.local/share/nvim/lazy/LazyVim/lua/lazyvim/plugins/extras/editor/snacks_explorer.lua
