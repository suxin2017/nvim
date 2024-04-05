-- Pull in the wezterm API
local wezterm = require("wezterm")
-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = "One Dark (Gogh)"

config.font = wezterm.font("JetBrains Mono")
config.font_size = 16
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.enable_tab_bar=false
-- and finally, return the configuration to wezterm
return config
