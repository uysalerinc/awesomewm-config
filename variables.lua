local awful = require("awful")

terminal = "st -e tmux"
editor = os.getenv("EDITOR") or "nvim"
editor_cmd = terminal .. " -e " .. editor



-- Table of layouts to cover with awful.layout.inc, order matters.
awful.layout.layouts = {
    awful.layout.suit.tile,
    awful.layout.suit.floating,
    awful.layout.suit.fair,
    awful.layout.suit.max,
}
    local taglist_s1 = {
        {name= "",sel= true},
        {name= "",},
        {name= "",},
        {name= "",},
        {name= "",},
        {name= "",},
    }

    local taglist_s2 = {
        {name= "*", sel=true},
        {name= "*",},
        {name= "*",},
        {name= "*",},
    }
    local l = awful.layout.suit  -- Just to save some typing: use an alias.
    local layouts = { l.tile, l.tile, l.tile, l.tile, l.tile,  l.tile, l.tile, l.tile, l.tile}
    awful.util.tagnames = { taglist_s1, taglist_s2}
