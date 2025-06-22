local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local xrdb = xresources.get_current_theme()

local colors = {
    -- general theme
    bg      = xrdb.background,
    fg      = xrdb.foreground,
    cl      = xrdb.color8,
    focus = xrdb.color0,

    -- core color palette
    red     = xrdb.color1,
    green   = xrdb.color2,
    yellow  = xrdb.color3,
    blue    = xrdb.color4,
    pink    = xrdb.color5,
    cyan    = xrdb.color6,
    violet  = xrdb.color12,
    orange  = xrdb.color9,
    purple  = xrdb.color4,
    white = xrdb.color15,
}

local theme = {}

theme.font          = "Roboto Bold 7"
theme.taglist_font = "Hack Nerd Font Mono 12"

theme.bg_normal     =  colors.bg
theme.bg_focus      = colors.focus
theme.bg_urgent     = colors.red
theme.bg_minimize   = colors.cl
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = colors.cl
theme.fg_focus      = colors.fg
theme.fg_urgent     = colors.red
theme.fg_minimize   = colors.white

theme.useless_gap   = dpi(1.5)
theme.border_width  = dpi(0.5)
theme.border_normal = colors.bg
theme.border_focus  =  colors.violet
theme.border_marked = colors.red


theme.taglist_fg_occupied = colors.purple
theme.taglist_bg_focus = theme.bg_normal
theme.taglist_fg_focus = colors.fg
theme.taglist_fg_empty = colors.cl

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
