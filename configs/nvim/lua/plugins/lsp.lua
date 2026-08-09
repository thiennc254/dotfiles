return {
  { "mason-org/mason.nvim", enabled = false },
  { "mason-org/mason-lspconfig.nvim", enabled = false },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {},
        pyright = {},
        ruff = {},
        ts_ls = {},
        tailwindcss = {},
        bashls = {},
        clangd = {},
        rust_analyzer = {},
        gopls = {},
        jsonls = {},
        html = {},
        cssls = {},
        marksman = {},
        nixd = {
          settings = {
            nixd = {
              formatting = {
                command = { "alejandra" },
              },
            },
          },
        },
      },
    },
  },
}
