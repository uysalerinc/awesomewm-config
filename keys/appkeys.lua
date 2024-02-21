local awful = require('awful')
local gtable = require('gears.table')

appkeys = gtable.join(

  awful.key({ modkey }, "F3",
    function()
      awful.spawn("firefox")
    end,
    {description = "open Firefox", group = "apps"}),

  awful.key({ }, "Print",
    function()
      awful.spawn.with_shell("screenshot -s")
    end,
    {description = "Take screenshot of area", group = "apps"}),

  awful.key({shiftkey }, "Print",
    function()
      awful.spawn.with_shell("screenshot")
    end,
    {description = "Take screenshot entire screen", group = "apps"})
  )
