-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

local helper = hypr.helpers

-- =========================================================================
-- 1. HARDCODED SYSTEM FIXES
-- =========================================================================

local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps to preserve tiling layout integrity
	name = "suppress-maximize-events",
	match = { class = ".*" },
	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
	-- Address and fix specific dragging and focus bugs with XWayland windows
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

-- Dynamic window positioning rule for hyprland-run launcher utility
hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },
	move = "20 monitor_h-120",
	float = true,
})

-- =========================================================================
-- 2. WINDOW RULES AUTOMATION ENGINE (CONSUMES DATA FROM UTILS/APPS.LUA)
-- =========================================================================
if hypr.apps and hypr.apps.rules then
	for _, rule in ipairs(hypr.apps.rules) do
		local match, effects = rule[1], rule[2]
		helper.window(match, effects)
	end
end

-- =========================================================================
-- 3. LAYER RULES AUTOMATION ENGINE (CONSUMES DATA FROM UTILS/APPS.LUA)
-- =========================================================================
if hypr.apps and hypr.apps.layer_rules then
	for _, layer in ipairs(hypr.apps.layer_rules) do
		hl.layer_rule({
			match = { namespace = layer.namespace },
			no_anim = layer.no_anim,
			blur = layer.blur,
			blur_popups = layer.blur_popups,
		})
	end
end
