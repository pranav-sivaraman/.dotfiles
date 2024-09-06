local opt = vim.opt

-- Line number
opt.number = true
opt.relativenumber = true

-- Status information
opt.showmode = false
opt.showcmd = false
opt.cursorline = true

-- Tab rules
-- TODO: Set default indent rules based on filetype
opt.tabstop = 2
opt.shiftwidth = 2
opt.autoindent = true
opt.expandtab = true

-- Colorscheme
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Scroll and line break
opt.scrolloff = 999
opt.wrap = true
opt.linebreak = true


-- Split windows
opt.splitright = true
opt.splitbelow = true

-- Persistent undo
opt.undofile = true

-- Color column
opt.colorcolumn = "80"

-- No swap file
opt.swapfile = false
