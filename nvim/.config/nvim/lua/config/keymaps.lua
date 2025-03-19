local map = vim.keymap.set

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

map({ "n", "v" }, "y", '"+y', { desc = "Yank to System Clipboard" })
map({ "n", "v" }, "p", '"+p', { desc = "Paste from System Clipboard" })
map({ "n", "v" }, "P", '"+P', { desc = "Paste before cursor from System Clipboard" })
map({ "n", "v" }, "x", '"+x', { desc = "Cut to System Clipboard" })
map({ "n", "v" }, "X", '"+X', { desc = "Cut to System Clipboard (before cursor)" })
map({ "n", "v" }, "d", '"+d', { desc = "Delete to System Clipboard" })
map({ "n", "v" }, "Y", '"+yy', { desc = "Yank entire line to System Clipboard" })
map({ "n", "v" }, "dd", '"+dd', { desc = "Delete entire line to System Clipboard" })
