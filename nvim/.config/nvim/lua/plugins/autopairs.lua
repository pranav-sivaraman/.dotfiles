return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	opts = {
		check_ts = true,
		ts_config = { java = false },
		fast_wrap = {
			map = "<M-e>",
			chars = { "{", "[", "(", '"', "'" },
			pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
			offset = 0,
			end_key = "$",
			keys = "qwertyuiopzxcvbnmasdfghjkl",
			check_comma = true,
			highlight = "PmenuSel",
			highlight_grey = "LineNr",
		},
	},
	keys = {
		{
			"<leader>ua",
			function()
				local autopairs = require("nvim-autopairs")
				if autopairs.state.disabled then
					autopairs.enable()
				else
					autopairs.disable()
				end
			end,
			desc = "Toggle autopairs",
		},
	},
}
