require("config.lazy")
require("config.autocmds")
require("config.keymaps")
require("config.options")

vim.lsp.enable("clangd")
vim.lsp.enable("lua_ls")
vim.lsp.enable("rust_analyzer")
-- vim.lsp.enable("basedpyright")
vim.lsp.enable("ruff")
vim.lsp.enable("yamlls")



vim.filetype.add({
  pattern = {
    ["*.bu"] = "yaml",
  },
})
