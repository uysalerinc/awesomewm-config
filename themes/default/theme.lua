local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local colors = {
    bg = "#282A36",
    fg = "#f8f8f2",
    cl = "#44475A",
    comment = "#6272a4",
    cyan = "#8be9fd",
    green = "#50fa7b",
    orange = "#ffb86c",
    pink = "#ff79c6",
    purple = "#bd93f9",
    violet = "#7f00ff",
    red = "#ff5555",
    yellow = "#f1fa8c",
}

local theme = {}

--theme.font          = "Hack Nerd Font Mono 8"
theme.font          = "Roboto Bold 7"
theme.taglist_font = "Hack Nerd Font Mono 12"

theme.bg_normal     =  colors.bg
theme.bg_focus      = "#535d6c"
theme.bg_urgent     = colors.red
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = colors.comment
theme.fg_focus      = colors.fg
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.useless_gap   = dpi(1.5)
theme.border_width  = dpi(0.5)
theme.border_normal = colors.cl
theme.border_focus  =  colors.violet
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

theme.taglist_fg_occupied = colors.purple
theme.taglist_bg_focus = theme.bg_normal
theme.taglist_fg_focus = colors.fg
theme.taglist_fg_empty = colors.comment

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80