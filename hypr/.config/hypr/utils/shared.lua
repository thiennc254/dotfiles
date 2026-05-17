local M = {}

M.mainMod = "SUPER"
M.menu = "rofi"

M.monitors = {
	primary = {
		output = "HDMI-A-1",
		mode = "preferred",
		position = "auto",
		scale = "1",
	},
	second = {
		output = "eDP-1",
		mode = "preferred",
		position = "auto",
		scale = "1.25",
	},
}

return M
