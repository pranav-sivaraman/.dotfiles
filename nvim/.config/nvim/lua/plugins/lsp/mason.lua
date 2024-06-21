return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			PATH = "prepend",
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"clangd",
				"black",
				"isort",
				"prettier",
				"stylua",
				"lua_ls",
				"bashls",
				"cmake",
				"yamlls",
				"texlab",
				"rust_analyzer",
			},
		})
	end,
}
