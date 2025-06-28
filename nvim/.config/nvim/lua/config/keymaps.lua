vim.keymap.set("n", "<leader>t", function()
  local term_bufnr = nil
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_get_option(buf, "buftype") == "terminal" then
      term_bufnr = buf
      break
    end
  end

  if term_bufnr then
    -- Terminal exists, switch to it
    for _, win in ipairs(vim.api.nvim_list_wins()) do
      if vim.api.nvim_win_get_buf(win) == term_bufnr then
        vim.api.nvim_set_current_win(win)
        return
      end
    end
    -- Terminal not visible, open in current window
    vim.api.nvim_set_current_buf(term_bufnr)
  else
    -- Terminal doesn't exist, open a new one
    vim.cmd("terminal")
  end
end, { desc = "Toggle terminal buffer" })
