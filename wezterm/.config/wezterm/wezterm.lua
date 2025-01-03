local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Rosé Pine (Gogh)"

config.front_end = "WebGpu"

config.font = wezterm.font_with_fallback({
	{ family = "Monaco", harfbuzz_features = { "kern", "clig", "liga=0" } },
	"Menlo",
	"Apple Color Emoji",
}, { weight = "Medium" })
config.font_size = 18

config.enable_tab_bar = false
config.bold_brightens_ansi_colors = "No"

config.freetype_load_target = "Light"
config.freetype_render_target = "HorizontalLcd"

config.audible_bell = "Disabled"

config.window_decorations = "RESIZE"

-- Use the defaults as a base
config.hyperlink_rules = wezterm.default_hyperlink_rules()

-- make task numbers clickable
-- the first matched regex group is captured in $1.
table.insert(config.hyperlink_rules, {
	regex = [[\b[tt](\d+)\b]],
	format = "https://example.com/tasks/?t=$1",
})

-- make username/project paths clickable. this implies paths like the following are for github.
-- ( "nvim-treesitter/nvim-treesitter" | wbthomason/packer.nvim | wez/wezterm | "wez/wezterm.git" )
-- as long as a full url hyperlink regex exists above this it should not match a full url to
-- github or gitlab / bitbucket (i.e. https://gitlab.com/user/project.git is still a whole clickable url)
table.insert(config.hyperlink_rules, {
	regex = [[["]?([\w\d]{1}[-\w\d]+)(/){1}([-\w\d\.]+)["]?]],
	format = "https://www.github.com/$1/$3",
})

return config
