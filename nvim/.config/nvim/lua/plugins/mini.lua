return {
  {
    "echasnovski/mini.nvim",
    config = function()
      require("mini.ai").setup()
      -- Note: mini.surround is configured separately below
    end,
  },
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "gsa",
        delete = "gsd",
        find = "gsf",
        find_left = "gsF",
        highlight = "gsh",
        replace = "gsr",
        update_n_lines = "gsn",
      },
    },
  },
}
