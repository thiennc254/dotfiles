return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      prettier = {
        prepend_args = {
          "--tab-width",
          "4",
          "--trailing-comma",
          "none",
        },
      },
    },
    formatters_by_ft = {
      -- đảm bảo json/jsonc dùng đúng config
      json = { "jq" },
      jsonc = { "prettier" },
    },
  },
}
