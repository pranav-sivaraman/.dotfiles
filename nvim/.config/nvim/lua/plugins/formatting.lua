return {
	"stevearc/conform.nvim",
	event = "BufEnter",
	cmd = "ConformInfo",
	opts = {
		default_format_opts = { lsp_format = "fallback" },
		format_on_save = {
			lsp_format = "fallback",
			timeout_ms = 500,
		},
		format_after_save = {
			lsp_format = "fallback",
		},
		formatters_by_ft = {
			sh = { "shfmt" },
			lua = { "stylua" },
			python = { "ruff" },
			cmake = { "cmakelang" },
		},
	},
}
