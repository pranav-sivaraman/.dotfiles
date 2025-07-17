return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "asm",
      "bash",
      "bibtex",
      "c",
      "cmake",
      "cpp",
      "csv",
      "cuda",
      "diff",
      "dockerfile",
      "doxygen",
      "fish",
      "json",
      "latex",
      "llvm",
      "lua",
      "make",
      "markdown",
      "mlir",
      "ninja",
      "python",
      "regex",
      "rust",
      "tmux",
      "toml",
      "yaml",
      "latex",
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
    indent = { enable = true },
  },
  cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
  config = function (opts) 
      local configs = require("nvim-treesitter.configs")

      configs.setup(opts)
  end
}
