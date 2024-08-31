local keymap = vim.keymap

-- Better Page Up and Down
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-b>", "<C-b>zz")
keymap.set("n", "<C-f>", "<C-f>zz")

-- Better Window Management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sm", "<C-w>|<C-w>_", { desc = "Make splits equal size" })
keymap.set("n", "<leader>snh", "<cmd>new<CR>", { desc = "Make a new horizontal window" })
keymap.set("n", "<leader>snv", "<cmd>vnew<CR>", { desc = "Make a new vertical window" })
keymap.set("n", "<leader>sq", "<cmd>close<CR>", { desc = "Close current split" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
