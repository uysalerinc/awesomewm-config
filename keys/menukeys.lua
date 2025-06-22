local awful = require('awful')
local gtable = require('gears.table')
local menubar = require('menubar')

menukeys = gtable.join(

  awful.key({ modkey, shiftkey }, "r", function() awful.screen.focused().mypromptbox:run() end,
           {description = "run prompt", group = "launcher"}),

  awful.key({modkey}, "r", function () awful.spawn.with_shell("dmenu_run") end,
            {description = "Dmenu Run", group = "launcher"}),

 awful.key({ modkey }, "x",
           function ()
               awful.prompt.run {
                 prompt       = "Run Lua code: ",
                 textbox      = awful.screen.focused().mypromptbox.widget,
                 exe_callback = awful.util.eval,
                 history_path = awful.util.get_cache_dir() .. "/history_eval"
               }
           end,
           {description = "lua execute prompt", group = "awesome"}),
 -- Menubar
 awful.key({ modkey }, "p", function() menubar.show() end,
           {description = "show the menubar", group = "launcher"}),
 awful.key({ modkey }, "w", function () mymainmenu:show() end,
          {description = "show main menu", group = "awesome"})
           )
