
local awful = require('awful')
local wibox = require('wibox')
beautiful = require('beautiful')
local build_widget = require('widgets.build_widget')
local xresources = require("beautiful.xresources")
local xrdb = xresources.get_current_theme()

local widgets = {}

-- From Files

-- Separators
widgets.space = wibox.widget.textbox('<span>  </span>')
widgets.seperator = wibox.widget.textbox(string.format(' <span color="%s">|</span>  ', beautiful.xcolor8))

-- Textclock
local textclock_text =wibox.widget.textclock(" %d %b %a %I:%M %p")
widgets.textclock = build_widget:new(textclock_text, "", xrdb.color4, true).widget

local month_calendar = awful.widget.calendar_popup.month()
month_calendar:attach( widgets.textclock, 'tc' )

return widgets
