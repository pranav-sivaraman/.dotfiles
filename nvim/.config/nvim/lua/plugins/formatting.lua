return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "ruff" },
				fish = { "fish_indent" },
			},
			format_on_save = {
				async = false,
				timeout_ms = 500,
				lsp_fallback = true,
			},
			formatters = {
				black = {
					prepend_args = { "--line-length=99" },
				},
			},
		})
	end,
}
