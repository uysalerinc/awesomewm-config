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


-- Fonts
theme.font          = "Roboto Bold 7"
theme.taglist_font = "Hack Nerd Font Mono 12"

-- Background
theme.bg_normal     =  colors.bg
theme.bg_focus      = colors.focus
theme.bg_urgent     = colors.red
theme.bg_minimize   = colors.cl
theme.bg_systray    = theme.bg_normal

-- Foreground
theme.fg_normal     = colors.cl
theme.fg_focus      = colors.fg
theme.fg_urgent     = colors.red
theme.fg_minimize   = colors.white

-- Borders
theme.border_width  = dpi(0.5)
theme.border_normal = colors.bg
theme.border_focus  =  colors.violet
theme.border_marked = colors.red


-- Taglist
theme.taglist_fg_occupied = colors.purple
theme.taglist_bg_focus = theme.bg_normal
theme.taglist_fg_focus = colors.fg
theme.taglist_fg_empty = colors.cl
theme.useless_gap   = dpi(1.5)

theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

theme.icon_theme = nil

return theme
