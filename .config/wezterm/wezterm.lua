-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- config.font = wezterm.font("JetBrains Mono")
config.font = wezterm.font_with_fallback({
	"JetBrains Maple Mono",
	"JetBrains Mono",
	"NotoMono Nerd Font Mono",
})
config.font_size = 14

config.keys = {
	-- Rebind OPT-Left, OPT-Right as ALT-b, ALT-f respectively to match Terminal.app behavior
	{
		key = "LeftArrow",
		mods = "OPT",
		action = act.SendKey({
			key = "b",
			mods = "ALT",
		}),
	},
	{
		key = "RightArrow",
		mods = "OPT",
		action = act.SendKey({ key = "f", mods = "ALT" }),
	},
	{
		key = "v",
		mods = "CMD",
		action = act.PasteFrom("Clipboard"),
	},
}

-- Finally, return the configuration to wezterm:
return config
