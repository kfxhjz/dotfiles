-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- config.font = wezterm.font("JetBrains Mono")
config.font = wezterm.font_with_fallback({
	"JetBrains Maple Mono",
	"JetBrains Mono",
	"NotoMono Nerd Font Mono",
})
config.font_size = 14

-- Finally, return the configuration to wezterm:
return config
