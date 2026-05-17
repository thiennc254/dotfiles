local M = {}

local mod = hypr.shared.mainMod
local menu = hypr.shared.menu
local scripts = hypr.paths.scripts

-- =========================================================================
-- CENTRAL KEYBOARD BINDINGS REPOSITORY (Data-Driven Table)
-- =========================================================================
M.keybinds = {
	-- { modifiers, key, dispatcher_action, api_options }

	-- ---------------------------------------------------------------------
	-- A. CORE SYSTEM COMMANDS
	-- ---------------------------------------------------------------------
	{ mod, "RETURN", hl.dsp.exec_cmd(scripts.terminal) },
	{ mod, "W", hl.dsp.window.close() },
	{
		mod .. " + ALT + SHIFT",
		"M",
		hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"),
	},
	{ mod, "R", hl.dsp.exec_cmd(menu) },

	-- ---------------------------------------------------------------------
	-- B. WINDOW & LAYOUT MANAGEMENT
	-- ---------------------------------------------------------------------
	{ mod, "O", hl.dsp.window.float({ action = "toggle" }) },
	{ mod, "F", hl.dsp.window.fullscreen({ action = "toggle" }) },
	{ mod, "P", hl.dsp.window.pseudo() },
	{ mod .. " + ALT", "J", hl.dsp.layout("togglesplit") },

	-- ---------------------------------------------------------------------
	-- C. QUICK LAUNCHERS (SCRIPTS & UTILITIES)
	-- ---------------------------------------------------------------------
	{ mod .. " + CTRL", "SPACE", hl.dsp.exec_cmd(scripts.waybar_toggle) },
	{ mod, " + CTRL + E", hl.dsp.exec_cmd(scripts.file_manager) },
	{ mod, "B", hl.dsp.exec_cmd(scripts.browser) },
	{ mod .. " + CTRL", "A", hl.dsp.exec_cmd(scripts.mixer) },
	{ mod .. " + CTRL", "B", hl.dsp.exec_cmd(scripts.bluetooth) },
	{ mod .. " + CTRL", "W", hl.dsp.exec_cmd(scripts.wifi) },

	-- ---------------------------------------------------------------------
	-- D. VIM-STYLE NAVIGATION (FOCUS / SWAP / MOVE)
	-- ---------------------------------------------------------------------
	-- Focus Window
	{ mod, "H", hl.dsp.focus({ direction = "left" }) },
	{ mod, "L", hl.dsp.focus({ direction = "right" }) },
	{ mod, "K", hl.dsp.focus({ direction = "up" }) },
	{ mod, "J", hl.dsp.focus({ direction = "down" }) },

	-- Swap Window
	{ mod .. " + SHIFT", "H", hl.dsp.window.swap({ direction = "left" }) },
	{ mod .. " + SHIFT", "L", hl.dsp.window.swap({ direction = "right" }) },
	{ mod .. " + SHIFT", "K", hl.dsp.window.swap({ direction = "up" }) },
	{ mod .. " + SHIFT", "J", hl.dsp.window.swap({ direction = "down" }) },

	-- Move Window Location
	{ mod .. " + CTRL", "H", hl.dsp.window.move({ direction = "left" }) },
	{ mod .. " + CTRL", "L", hl.dsp.window.move({ direction = "right" }) },
	{ mod .. " + CTRL", "K", hl.dsp.window.move({ direction = "up" }) },
	{ mod .. " + CTRL", "J", hl.dsp.window.move({ direction = "down" }) },

	-- ---------------------------------------------------------------------
	-- E. MULTIMEDIA & HARDWARE CONTROL (LAPTOP KEYS)
	-- ---------------------------------------------------------------------
	-- Audio Control (wpctl)
	{
		"",
		"XF86AudioRaiseVolume",
		hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
		{ locked = true, repeating = true },
	},
	{
		"",
		"XF86AudioLowerVolume",
		hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
		{ locked = true, repeating = true },
	},
	{
		"",
		"XF86AudioMute",
		hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
		{ locked = true, repeating = true },
	},
	{
		"",
		"XF86AudioMicMute",
		hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
		{ locked = true, repeating = true },
	},

	-- Backlight Control
	{
		"",
		"XF86MonBrightnessUp",
		hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),
		{ locked = true, repeating = true },
	},
	{
		"",
		"XF86MonBrightnessDown",
		hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),
		{ locked = true, repeating = true },
	},

	-- Media Player Control (playerctl)
	{ "", "XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true } },
	{ "", "XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true } },
	{ "", "XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true } },
	{ "", "XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true } },

	-- ---------------------------------------------------------------------
	-- F. SYSTEM CAPTURE
	-- ---------------------------------------------------------------------
	{ "", "PRINT", hl.dsp.exec_cmd("cmd-screenshot"), { description = "Screenshot" } },
	{ mod, "PRINT", hl.dsp.exec_cmd("pkill hyprcursor || hyprpicker -a"), { description = "Color picker" } },

	-- ---------------------------------------------------------------------
	-- G. MOUSE ACTIONS
	-- ---------------------------------------------------------------------
	{ mod, "mouse:272", hl.dsp.window.drag(), { mouse = true } },
	{ mod, "mouse:273", hl.dsp.window.resize(), { mouse = true } },
	{ mod, "mouse_down", hl.dsp.focus({ workspace = "e+1" }) },
	{ mod, "mouse_up", hl.dsp.focus({ workspace = "e-1" }) },
}

return M
