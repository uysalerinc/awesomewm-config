local awful = require("awful")

terminal = "xterm"
editor = os.getenv("EDITOR") or "nano"
editor_cmd = terminal .. " -e " .. editor



-- Table of layouts to cover with awful.layout.inc, order matters.
awful.layout.layouts = {
    -- awful.layout.suit.floating,
    awful.layout.suit.tile,
    -- awful.layout.suit.tile.left,
    -- awful.layout.suit.tile.bottom,
    awful.layout.suit.tile.top,
    awful.layout.suit.fair,
    awful.layout.suit.fair.horizontal,
    awful.layout.suit.spiral,
    awful.layout.suit.spiral.dwindle,
    awful.layout.suit.max,
    awful.layout.suit.max.fullscreen,
    awful.layout.suit.magnifier,
    awful.layout.suit.corner.nw,
    -- awful.layout.suit.corner.ne,
    -- awful.layout.suit.corner.sw,
    -- awful.layout.suit.corner.se,
}



-- Each screen has its own tag table.
awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s, awful.layout.layouts[1])

-- Alternative tag table which you can set layouts per screen.
---{{{
-- local names = { "1", "2", "3", "4", "5", "6" ,"7", "8", "9" }
-- local l = awful.layout.suit  -- Just to save some typing: use an alias.
-- local layouts = { l.tile, l.tile, l.tile, l.tile, l.tile,  l.tile, l.tile, l.tile, l.tile}
-- awful.tag(names, s, layouts)
---}}}
