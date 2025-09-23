-- fix bufferline not transparent
-- ~/.local/share/nvim/lazy/tokyonight.nvim/lua/tokyonight/groups/base.lua
-- TabLineFill                 = { bg = opts.transparent and c.none or c.black },
-- tab pages line, where there are no labels

return {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
        options = {
            mode = "buffers",
            diagnostics = "nvim_lsp",
            indicator = {
                -- icon = "▎",
                -- style = "icon" | "underline" | "none",
                icon = " ",
                style = "none",
            },
        },
    },
}
