return {
	cmd = {
		"neocmakelsp",
		"--stdio",
	},
	root_markers = { ".clangd", "compile_commands.json" },
	filetypes = { "cmake", "CMakeLists.text" },
}
