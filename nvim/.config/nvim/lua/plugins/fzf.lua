return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = function()
		local fzf = require("fzf-lua")
		return {
			{
				"<leader>ff",
				function()
					fzf.files()
				end,
				desc = "Find files",
			},
			{
				"<leader>fo",
				function()
					fzf.oldfiles()
				end,
			},
			{
				"<leader>fw",
				function()
					fzf.grep_project()
				end,
			},
			{
				"<leader>fb",
				function()
					fzf.buffers()
				end,
			},
		}
	end,
	opts = {
		keymap = {
			builtin = {
				["jk"] = "hide",
			},
		},
	},
}
