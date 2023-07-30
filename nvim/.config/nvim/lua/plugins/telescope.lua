return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  opts = function()
    local actions = require("telescope.actions")
    return {
      defaults = {
        git_worktrees = vim.g.git_worktrees,
        path_display = { "truncate" },
        sorting_strategy = "ascending",
        layout_config = {
          horizontal = { prompt_position = "top", preview_width = 0.55 },
          vertical = { mirror = false },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
        mappings = {
          i = {
            ["<C-n>"] = actions.cycle_history_next,
            ["<C-p>"] = actions.cycle_history_prev,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
          n = { q = actions.close },
        },
      },
    }
  end,
  keys = {
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "Find files",
    },
    {
      "<leader>fF",
      function()
        require("telescope.builtin").find_files({ hidden = true, no_ignore = true })
      end,
      desc = "Find all files",
    },
    {
      "<leader>fo",
      function()
        require("telescope.builtin").oldfiles()
      end,
      desc = "Find history",
    },
    {
      "<leader>fw",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Find words",
    },
    {
      "<leader>fb",
      function()
        require("telescope.builtin").buffers()
      end,
      desc = "Find buffers",
    },
    {
      "<leader>fc",
      function()
        require("telescope.builtin").grep_string()
      end,
      desc = "Find word under cursor",
    },
    {
      "<leader>fa",
      function()
        require("telescope.builtin").current_buffer_fuzzy_find()
      end,
      desc = "Find words in current buffer",
    },
  },
}
