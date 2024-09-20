local keymap = vim.keymap

-- Page up and down
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-b>", "<C-b>zz")
keymap.set("n", "<C-f>", "<C-f>zz")

-- Fzf
keymap.set("n", "<leader><C-t>", "<cmd>Files<CR>")
keymap.set("n", "<leader><C-r>", "<cmd>History<CR>")
keymap.set("n", "<leader><C-w>", "<cmd>Rg<CR>")
