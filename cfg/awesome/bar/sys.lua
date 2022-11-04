local M = {}

local awful = require("awful")
local update_interval = 20

---- Clock
M.clock = wibox.widget {
  font = beautiful.barfont,
  align = 'center',
  valign = 'center',
  widget = wibox.widget.textbox
}

gears.timer {
  timeout = 60,
  autostart = true,
  call_now = true,
  callback = function()
    M.clock.markup = os.date("%I:%M %p")
  end
}
--

---- Test
M.test = wibox.widget {
  font = beautiful.barfont,
  align = 'center',
  valign = 'center',
  widget = wibox.widget.textbox
}

gears.timer {
  timeout = 60,
  autostart = true,
  call_now = true,
  callback = function()
    M.test.markup = os.date("Test")
  end
}
--

return M
