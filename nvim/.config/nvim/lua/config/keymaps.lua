map = vim.keymap.set

map({ "n", "x" }, "<C-d>", "<C-d>zz", { desc = "Page Down", remap = true })
map({ "n", "x" }, "<C-u>", "<C-u>zz", { desc = "Page Up", remap = true })

map({ "n", "t" }, "<leader>t", function()
  Snacks.terminal.toggle()
end, { desc = "Terminal (Root Dir)", remap = true })
