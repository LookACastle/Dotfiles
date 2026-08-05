-- Monitors
require("monitors")

-- Variables
local terminal = "kitty --config ~/Dotfiles/kitty.conf"
local menu = "rofi -theme ~/Dotfiles/rofi.rasi"

-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("fcitx5 -d")
    hl.exec_cmd("wlsunset -T 5500 -t 3000 -l 55.7 -L 12.5")
    hl.exec_cmd("touch ~/Dotfiles/quickshell/.qmlls.ini & qs -p ~/Dotfiles/quickshell")
    hl.exec_cmd("mako -c ~/Dotfiles/mako.conf")
    hl.exec_cmd("awww-daemon")
end)

-- Permissions
hl.permission({ binary = "/nix/store/[a-z0-9]{32}-grim-[0-9.]*/bin/grim", type = "screencopy", mode = "allow" })
hl.permission({ binary = "/usr/bin/grim", type = "screencopy", mode = "allow" })
hl.permission({ binary = "/nix/store/[a-z0-9]{32}-xdg-desktop-portal-hyprland-[0-9.]*/libexec/.xdg-desktop-portal-hyprland-wrapped", type = "screencopy", mode = "allow" })
hl.permission({ binary = "/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", type = "screencopy", mode = "allow" })

-- Keybinds
hl.bind("SUPER + D", hl.dsp.exec_cmd("~/Dotfiles/Scripts/wordLookup.sh"))
hl.bind("SUPER + N", hl.dsp.exec_cmd("emacsclient -c"))
hl.bind("SUPER + S", hl.dsp.exec_cmd("grim -o $(hyprctl monitors | awk '/Monitor/{mon=$2} /focused: yes/{print mon}') - | satty -f - --copy-command wl-copy -o \"~/Media/Pictures/Screenshots/%Y%m%d_%H%M%S.png\" --fullscreen"))
hl.bind("SUPER + X", hl.dsp.exec_cmd("~/Dotfiles/Scripts/lockscreenWayland.sh"))
hl.bind("SUPER + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + SHIFT + SPACE", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + SHIFT + D", hl.dsp.exec_cmd(menu .. " -show drun"))
hl.bind("SUPER + SHIFT + E", hl.dsp.exit())
hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind("SUPER + SHIFT + R", hl.dsp.exec_cmd("hyprctl reload"))
hl.bind("SUPER + SHIFT + Q", hl.dsp.window.close())

hl.bind("SUPER + left", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }))

hl.bind("SUPER + SHIFT + left", hl.dsp.window.move({ direction = "l" }))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.move({ direction = "r" }))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.move({ direction = "d" }))

hl.bind("SUPER + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind("SUPER + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind("SUPER + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind("SUPER + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind("SUPER + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind("SUPER + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind("SUPER + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind("SUPER + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind("SUPER + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind("SUPER + 0", hl.dsp.focus({ workspace = 10 }))
hl.bind("SUPER + F1", hl.dsp.focus({ workspace = 11 }))
hl.bind("SUPER + F2", hl.dsp.focus({ workspace = 12 }))
hl.bind("SUPER + F3", hl.dsp.focus({ workspace = 13 }))
hl.bind("SUPER + F4", hl.dsp.focus({ workspace = 14 }))
hl.bind("SUPER + F5", hl.dsp.focus({ workspace = 15 }))
hl.bind("SUPER + F6", hl.dsp.focus({ workspace = 16 }))
hl.bind("SUPER + F7", hl.dsp.focus({ workspace = 17 }))
hl.bind("SUPER + F8", hl.dsp.focus({ workspace = 18 }))
hl.bind("SUPER + F9", hl.dsp.focus({ workspace = 19 }))
hl.bind("SUPER + F10", hl.dsp.focus({ workspace = 20 }))
hl.bind("SUPER + F11", hl.dsp.focus({ workspace = 21 }))
hl.bind("SUPER + F12", hl.dsp.focus({ workspace = 22 }))

hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({ workspace = 1, follow = false }))
hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({ workspace = 2, follow = false }))
hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({ workspace = 3, follow = false }))
hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({ workspace = 4, follow = false }))
hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({ workspace = 5, follow = false }))
hl.bind("SUPER + SHIFT + 6", hl.dsp.window.move({ workspace = 6, follow = false }))
hl.bind("SUPER + SHIFT + 7", hl.dsp.window.move({ workspace = 7, follow = false }))
hl.bind("SUPER + SHIFT + 8", hl.dsp.window.move({ workspace = 8, follow = false }))
hl.bind("SUPER + SHIFT + 9", hl.dsp.window.move({ workspace = 9, follow = false }))
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = 10, follow = false }))
hl.bind("SUPER + SHIFT + F1", hl.dsp.window.move({ workspace = 11, follow = false }))
hl.bind("SUPER + SHIFT + F2", hl.dsp.window.move({ workspace = 12, follow = false }))
hl.bind("SUPER + SHIFT + F3", hl.dsp.window.move({ workspace = 13, follow = false }))
hl.bind("SUPER + SHIFT + F4", hl.dsp.window.move({ workspace = 14, follow = false }))
hl.bind("SUPER + SHIFT + F5", hl.dsp.window.move({ workspace = 15, follow = false }))
hl.bind("SUPER + SHIFT + F6", hl.dsp.window.move({ workspace = 16, follow = false }))
hl.bind("SUPER + SHIFT + F7", hl.dsp.window.move({ workspace = 17, follow = false }))
hl.bind("SUPER + SHIFT + F8", hl.dsp.window.move({ workspace = 18, follow = false }))
hl.bind("SUPER + SHIFT + F9", hl.dsp.window.move({ workspace = 19, follow = false }))
hl.bind("SUPER + SHIFT + F10", hl.dsp.window.move({ workspace = 20, follow = false }))
hl.bind("SUPER + SHIFT + F11", hl.dsp.window.move({ workspace = 21, follow = false }))
hl.bind("SUPER + SHIFT + F12", hl.dsp.window.move({ workspace = 22, follow = false }))

hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.bind("SUPER + mouse:272", hl.dsp.window.drag())
hl.bind("SUPER + mouse:273", hl.dsp.window.resize())

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 2%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 2%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 2%-"), { locked = true, repeating = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Smart gaps
hl.workspace_rule({
    workspace = "w[tv1]",
    gaps_out = 0,
    gaps_in = 0,
})

hl.workspace_rule({
    workspace = "f[1]",
    gaps_out = 0,
    gaps_in = 0,
})

-- Videos playing off focus should still be opaque
hl.window_rule({
    name = "windowrule-1",
    match = {
        float = 0,
        workspace = "w[tv1]",
    },
    border_size = 0,
    rounding = 0,
})

hl.window_rule({
    name = "windowrule-2",
    match = {
        float = 0,
        workspace = "f[1]",
    },
    border_size = 0,
    rounding = 0,
})


hl.window_rule({
    name = "windowrule-3",
    match = {
        title = "(.*- YouTube.*)$",
    },
    opacity = "1.0 override",
})

hl.window_rule({
    name = "windowrule-4",
    match = {
        title = "(.*Metastream.*)$",
    },
    opacity = "1.0 override",
})

-- Cursor
hl.env("XCURSOR_THEME", "catppuccin-mocha-sapphire-cursors")
hl.env("XCURSOR_SIZE", "32")
hl.env("HYPRCURSOR_THEME", "catppuccin-mocha-sapphire-cursors")
hl.env("HYPRCURSOR_SIZE", "32")

-- Animations
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1.0 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })
hl.animation({
    leaf = "global",
    enabled = true,
    speed = 10,
    bezier = "default",
})
hl.animation({
    leaf = "border",
    enabled = true,
    speed = 5.39,
    bezier = "easeOutQuint",
})
hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 4.79,
    bezier = "easeOutQuint",
})
hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 4.1,
    bezier = "easeOutQuint",
    style = "popin 87%",
})
hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 1.49,
    bezier = "linear",
    style = "popin 87%",
})
hl.animation({
    leaf = "fadeIn",
    enabled = true,
    speed = 1.73,
    bezier = "almostLinear",
})
hl.animation({
    leaf = "fadeOut",
    enabled = true,
    speed = 1.46,
    bezier = "almostLinear",
})
hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 3.03,
    bezier = "quick",
})
hl.animation({
    leaf = "layers",
    enabled = true,
    speed = 3.81,
    bezier = "easeOutQuint",
})
hl.animation({
    leaf = "layersIn",
    enabled = true,
    speed = 4,
    bezier = "easeOutQuint",
    style = "fade",
})
hl.animation({
    leaf = "layersOut",
    enabled = true,
    speed = 1.5,
    bezier = "linear",
    style = "fade",
})
hl.animation({
    leaf = "fadeLayersIn",
    enabled = true,
    speed = 1.79,
    bezier = "almostLinear",
})
hl.animation({
    leaf = "fadeLayersOut",
    enabled = true,
    speed = 1.39,
    bezier = "almostLinear",
})
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 1.94,
    bezier = "almostLinear",
    style = "fade",
})
hl.animation({
    leaf = "workspacesIn",
    enabled = true,
    speed = 1.21,
    bezier = "almostLinear",
    style = "fade",
})
hl.animation({
    leaf = "workspacesOut",
    enabled = true,
    speed = 1.94,
    bezier = "almostLinear",
    style = "fade",
})
hl.config({
    ecosystem = {
        enforce_permissions = 1,
    },
    -- Visuals
    general = {
        gaps_in = 6,
        gaps_out = 6,
        border_size = 0,
        layout = "dwindle",
    },
    decoration = {
        rounding = 0,
        rounding_power = 0,
        -- Change transparency of focused and unfocused windows
        active_opacity = 1.0,
        inactive_opacity = 0.9,
        shadow = {
            enabled = false,
        },
        blur = {
            enabled = false,
        },
    },
    misc = {
        disable_hyprland_logo = true,
    },
    animations = {
        enabled = true,
    },
    dwindle = {
        preserve_split = true,
    },
    master = {
        new_status = "master",
    },
    -- Input
    input = {
        kb_layout = "dk",
        kb_variant = "nodeadkeys",
        kb_model = "",
        kb_options = "",
        kb_rules = "",
        follow_mouse = 2,
        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.
        touchpad = {
            natural_scroll = false,
        },
    },
    cursor = {
        no_warps = true,
    },
})
