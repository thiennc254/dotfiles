local M = {}

M.mainMod = "SUPER"

M.monitors = {
	primary = {
		output = "DP-1",
		mode = "1920x1080@120",
		position = "auto",
		scale = "1",
	},
	second = {
		output = "eDP-1",
		mode = "preferred",
		position = "auto",
		scale = "1.2",
	},
}

M.workspaces = {
	-- { workspace_name, target_monitor, is_default }
	{ "1", M.monitors.primary.output, true },
	{ "2", M.monitors.primary.output, false },
	{ "3", M.monitors.primary.output, false },
	{ "4", M.monitors.second.output, true },
	{ "5", M.monitors.second.output, false },
	{ "6", M.monitors.second.output, false },
}

return M
