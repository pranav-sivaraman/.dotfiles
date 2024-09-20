local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Rosé Pine (Gogh)"

config.front_end = "WebGpu"

config.font = wezterm.font_with_fallback({
	{ family = "Monaco", harfbuzz_features = { "kern", "clig", "liga=0" } },
	"Menlo",
	"Apple Color Emoji",
}, { weight = "Medium" })
config.font_size = 20

config.enable_tab_bar = false
config.bold_brightens_ansi_colors = "No"

config.freetype_load_target = "Light"
config.freetype_render_target = "HorizontalLcd"

config.audible_bell = "Disabled"

config.window_decorations = "RESIZE"

return config
