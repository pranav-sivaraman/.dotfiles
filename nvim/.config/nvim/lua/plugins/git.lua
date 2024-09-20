return {
	{
		"lewis6991/gitsigns.nvim",
		lazy = false,
		keys = {
			{ "<leader>gp", ":Gitsigns preview_hunk<cr>" },
			{ "<leader>gs", ":Gitsigns stage_hunk<cr>" },
			{ "<leader>gu", ":Gitsigns undo_stage_hunk<cr>" },
			{ "<leader>gb", ":Gitsigns toggle_current_line_blame<cr>" },
		},
		opts = {},
	},
	{ "tpope/vim-fugitive" },
}
