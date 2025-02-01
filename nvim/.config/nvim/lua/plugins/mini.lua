return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		require("mini.sessions").setup({
			autoread = true,
		})
	end,
}
