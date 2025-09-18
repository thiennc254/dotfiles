return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                qmlls = {
                    cmd = { "/home/nct/Qt/6.9.2/gcc_64/bin/qmlls" }, -- hoặc path đầy đủ: "/home/you/Qt/6.8.0/gcc_64/bin/qmlls"
                    filetypes = { "qml" },
                    root_dir = function(fname)
                        return require("lspconfig.util").root_pattern("CMakeLists.txt", ".git")(fname)
                            or vim.fn.getcwd()
                    end,
                },
            },
        },
    },
}
