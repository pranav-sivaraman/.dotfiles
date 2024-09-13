return {
	"williamboman/mason.nvim",
	event = "BufEnter",
	cmd = "Mason",
	opts = {
		max_concurrent_installers = 8,
		ensure_installed = {
			"bash-language-server",
			"clangd",
			"cmakelang",
			"lua-language-server",
			"ruff",
			"shfmt",
			"stylua",
		},
	},
	config = function(_, opts)
		require("mason").setup(opts)
		local registry = require("mason-registry")
		for _, tool in ipairs(opts.ensure_installed) do
			if not registry.is_installed(tool) then
				vim.cmd("MasonInstall " .. tool)
			end
		end
	end,
}
