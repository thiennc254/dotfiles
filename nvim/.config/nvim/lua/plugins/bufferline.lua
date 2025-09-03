return {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
        options = {
            mode = "buffers",
            diagnostics = "nvim_lsp",
        },
    },
}
