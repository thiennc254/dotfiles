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

-- Snack Explorer/Picker transparent background
-- vim.api.nvim_create_autocmd("User", {
--     callback = function()
--         vim.api.nvim_set_hl(0, "SnacksPicker", { bg = "NONE" })
--         vim.api.nvim_set_hl(0, "SnacksExplorer", { bg = "NONE" })
--     end,
-- })
vim.api.nvim_create_autocmd("User", {
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, "SnacksPicker", { bg = "none", nocombine = true })
        vim.api.nvim_set_hl(0, "SnacksExplorer", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "SnacksPickerBorder", { fg = "#316c71", bg = "none", nocombine = true })
    end,
})
