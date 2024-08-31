local opt = vim.opt

-- Set line number
opt.number = true
opt.relativenumber = true

-- Do not show mode information
opt.showmode = false

-- Set tab rules
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Popup options
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup

-- Set colorscheme options
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Split windows
opt.splitright = true
opt.splitbelow = true

-- Search settings
opt.ignorecase = true
opt.smartcase = true

-- Enable persistent undo
opt.undofile = true

-- Cursor line
opt.cursorline = true

-- Use system clipboard
opt.clipboard:append("unnamedplus")

-- Set scroll and line break options
opt.scrolloff = 999
opt.wrap = true
opt.linebreak = true

-- Set Color Column
opt.colorcolumn = "80"

-- No swap file
opt.swapfile = false
