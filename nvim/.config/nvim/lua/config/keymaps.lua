local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Exit Insert mode
keymap.set("i", "jj", "<Esc>", { noremap = false })

-- [Tmux - Vim Navigator]
keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts)
keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", opts)
keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", opts)
keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", opts)

-- [Command mode]
keymap.set("n", ";", ":")

-- [Buffer]
keymap.set("n", "<leader>w", "<cmd>bd<CR>")

-- Indentation
keymap.set("n", "<Tab>", ">>", { desc = "Indent Line (Normal mode)" }) -- Tab
keymap.set("n", "<S-Tab>", "<<", { desc = "Unindent Line (Normal mode)" }) -- Shift Tab
keymap.set("v", "<Tab>", ">gv", { desc = "Indent Selection (Visual mode)" }) -- Tab
keymap.set("v", "<S-Tab>", "<gv", { desc = "Unindent Selection (Visual mode)" }) -- Shift Tab
