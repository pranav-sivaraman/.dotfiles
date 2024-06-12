return {
	{
		"kdheepak/lazygit.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{ "<leader>gg", "<cmd>LazyGit<cr>", desc = "Toggle lazygit" },
		},
	},
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = true,
	},
}
