return {
	"saghen/blink.cmp",

	version = "*",
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts_extend = {
		"sources.default",
	},
	opts = {
		keymap = { preset = "super-tab" },

		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			per_filetype = {
				codecompanion = { "codecompanion" },
			},
		},
	},
	opts_extend = { "sources.default" },
}
