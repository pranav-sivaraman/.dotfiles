return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")

        mason.setup()

        mason_lspconfig.setup({
            ensure_installed = {
                "clangd",
                "pyright",
                "lua_ls",
                "bashls",
                "cmake",
                "yamlls",
                "texlab",
                "rust_analyzer",
            },

            automatic_installation = true
        })
    end,
}
