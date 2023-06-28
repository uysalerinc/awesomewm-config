local awful = require('awful')
local gtable = require('gears.table')

appkeys = gtable.join(

  awful.key({ modkey }, "F3",
    function()
      awful.spawn("firefox")
    end,
    {description = "open Firefox", group = "apps"})

  )
