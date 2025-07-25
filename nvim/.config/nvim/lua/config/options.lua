vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.number = true                                       -- Print line number
vim.opt.relativenumber = true                               -- Relative line numbers
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Only set clipboard if not in ssh, to make sure the OSC 52
vim.opt.autowrite = true                                    -- Enable auto write
vim.opt.shiftwidth = 2                                      -- Size of an indent
vim.opt.tabstop = 2                                         -- Number of spaces tabs count for
vim.opt.smartindent = true                                  -- Insert indents automatically
vim.opt.expandtab = true                                    -- Use spaces instead of tabs
vim.opt.termguicolors = true                                -- True color support
vim.opt.scrolloff = 999                                     -- Lines of context
vim.opt.showmode = false                                    -- Do not show mode
vim.opt.ignorecase = true                                   -- Ignore case
vim.opt.smartcase = true                                    -- Do not ignore case with capitals
vim.opt.wrap = true                                         -- Enable line wrap
vim.opt.cursorline = true                                   -- Enable highlighting of the current line
vim.opt.pumblend = 10                                       -- Popup blend
vim.opt.pumheight = 10                                      -- Maximum number of entries in a popup
vim.opt.list = true                                         -- Show some invisible characters
vim.opt.mouse = "a"                                         -- Enable mouse mode
vim.opt.splitbelow = true                                   -- Put new windows below current
vim.opt.splitright = true                                   -- Put new windows right of current
vim.opt.splitkeep = "screen"
vim.opt.laststatus = 3                                      -- Global statusline
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.g.clipboard = {
  name = "OSC 52",
  copy = {
    ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
    ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
  },
  paste = {
    ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
    ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
  },
}

vim.diagnostic.config({
  virtual_lines = { current_line = true }
})

