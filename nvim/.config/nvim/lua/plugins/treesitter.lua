return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufEnter", "VeryLazy" },
	opts = {
		highlight = { enable = true },
		indent = { enable = false },
		sync_install = false,
		auto_install = true,
		ensure_installed = {
			"asm",
			"bash",
			"c",
			"cmake",
			"cpp",
			"clingo",
			"cuda",
			"dockerfile",
			"doxygen",
			"fortran",
			"git_config",
			"git_rebase",
			"gitattributes",
			"gitcommit",
			"gitignore",
			"latex",
			"llvm",
			"lua",
			"make",
			"markdown",
			"mlir",
			"ninja",
			"nix",
			"python",
			"rust",
			"sql",
			"tmux",
			"toml",
			"vim",
			"yaml",
		},
	},
	config = function(_, opts)
		local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		parser_config.clingo = {
			install_info = {
				url = "https://github.com/potassco/tree-sitter-clingo.git", -- local path or git repo
				files = { "src/parser.c" }, -- note that some parsers also require src/scanner.c or src/scanner.cc
				-- optional entries:
				branch = "main", -- default branch in case of git repo if different from master
				generate_requires_npm = true, -- if stand-alone parser without npm dependencies
				requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
			},
			filetype = ".lp", -- if filetype does not match the parser name
		}
		require("nvim-treesitter.configs").setup(opts)

		parser_config.llvm = {
			filetype = ".ll",
		}
	end,
}
