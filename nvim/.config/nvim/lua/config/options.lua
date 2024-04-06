local opt = vim.opt

-- Set Line Number
opt.number = true
opt.relativenumber = true

-- Do not show mode information
opt.showmode = false

-- Set Tab Rules
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Popup Options
opt.pumblend = 10  -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup

-- Set Colorscheme Options
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Split Windows
opt.splitright = true
opt.splitbelow = true

-- Search Settings
opt.ignorecase = true
opt.smartcase = true

-- Enable Persistent Undo
opt.undofile = true

-- Cursor Line
opt.cursorline = true

-- Use System Clipboard
opt.clipboard:append("unnamedplus")

-- Set Scroll and Line Break Options
opt.scrolloff = 999
opt.wrap = true
opt.linebreak = true
-- opt.columns = 80

-- Set Color Column
opt.colorcolumn = "80"
