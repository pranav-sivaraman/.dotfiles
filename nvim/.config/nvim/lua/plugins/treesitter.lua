return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
        { "nvim-treesitter/nvim-treesitter-context", opts = { enable = true}, },
    },
    cmd = "TSUpdateSync",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "c",
                "cpp",
                "cuda",
                "lua",
                "fortran",
                "cmake",
                "make",
                "bash",
                "python",
                "rust",
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
