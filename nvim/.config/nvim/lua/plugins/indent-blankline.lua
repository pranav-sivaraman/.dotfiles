return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	event = { "LazyFile", "VeryLazy" },
	---@module "ibl"
	---@type ibl.config
	opts = {
		scope = { show_start = false, show_end = false },
	},
}