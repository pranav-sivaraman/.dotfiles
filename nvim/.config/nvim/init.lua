require("config.lazy")
require("config.autocmds")
require("config.keymaps")
require("config.options")

vim.lsp.enable("clangd")
vim.lsp.enable("luals")
vim.lsp.enable("rust_analyzer")
