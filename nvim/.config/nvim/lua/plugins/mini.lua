return {
  "echasnovski/mini.nvim",
  config = function()
    require("mini.ai").setup()

    require("mini.keymap").setup()
    local map_combo = require("mini.keymap").map_combo
    local mode = { "i", "c", "x", "s" }
    map_combo(mode, "jk", "<BS><BS><Esc>")
    map_combo("t", "jk", "<BS><BS><C-\\><C-n>")

    require("mini.surround").setup({
      mappings = {
        add = "gsa",
        delete = "gsd",
        find = "gsf",
        find_left = "gsF",
        highlight = "gsh",
        replace = "gsr",
        update_n_lines = "gsn",
      }
    })
  end,
}
