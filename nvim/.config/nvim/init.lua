require("config.lazy")
require("config.options")
require("config.autocmds")

-- LSP
vim.lsp.enable("luals")
vim.lsp.enable("clangd")
vim.lsp.enable("neocmake")
vim.lsp.enable("yamlls")
vim.lsp.enable("ruff")
