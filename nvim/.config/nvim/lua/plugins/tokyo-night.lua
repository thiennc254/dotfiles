return {
    "folke/tokyonight.nvim",
    opts = {
        transparent = true,
        -- dim_inactive = true,
        lualine_bold = true,
        styles = {
            sidebars = "transparent",
            floats = "transparent",
        },
        on_colors = function(colors)
            colors.bg_statusline = colors.none
        end,
        on_highlights = function(hl)
            hl.LineNrAbove = { fg = "#c0caf5", bold = false }
            hl.LineNrBelow = { fg = "#c0caf5", bold = false }
            -- hl.LineNr = { fg = "white", bold = true }
        end,
    },
}
