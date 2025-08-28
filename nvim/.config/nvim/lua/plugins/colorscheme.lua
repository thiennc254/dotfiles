return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "auto", -- latte, frappe, macchiato, mocha
                background = { -- :h background
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = true, -- disables setting the background color.
                float = {
                    transparent = false, -- enable transparent floating windows
                    solid = false, -- use solid styling for floating windows, see |winborder|
                },
                integrations = {
                    bufferline = true,
                },
            })
            vim.cmd.colorscheme("catppuccin")
        end,
    },
    {
        "akinsho/bufferline.nvim",
        opts = function(_, opts)
            local catppuccin = require("catppuccin.groups.integrations.bufferline")
            if catppuccin and catppuccin.get then
                opts.highlights = catppuccin.get()
            end
        end,
    },
}
