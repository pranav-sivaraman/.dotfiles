return {
	{
		"lewis6991/gitsigns.nvim",
		lazy = false,
		keys = {
			{ "<leader>gs", ":Gitsigns stage_hunk<cr>" },
			{ "<leader>gr", ":Gitsigns reset_hunk<cr>" },
			{ "<leader>gS", ":Gitsigns stage_buffer<cr>" },
			{ "<leader>gu", ":Gitsigns undo_stage_hunk<cr>" },
			{ "<leader>gR", ":Gitsigns reset_buffer<cr>" },
			{ "<leader>gp", ":Gitsigns preview_hunk<cr>" },
			{ "<leader>gd", ":Gitsigns diffthis<cr>" },
			{ "<leader>gb", ":Gitsigns toggle_current_line_blame<cr>" },
		},
		opts = {},
	},
}
