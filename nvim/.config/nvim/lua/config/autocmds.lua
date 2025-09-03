-- Turn off past mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = "*",
    command = "set nopaste",
})

-- Fix conceallevel for json files
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "json", "jsonc" },
    callback = function()
        vim.wo.spell = false
        vim.wo.conceallevel = 0
    end,
})

-- fix bufferline not transparent
-- ~/.local/share/nvim/lazy/tokyonight.nvim/lua/tokyonight/groups/base.lua
-- TabLineFill                 = { bg = opts.transparent and c.none or c.black },
-- tab pages line, where there are no labels
