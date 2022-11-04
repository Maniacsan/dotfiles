local sys = require("bar.sys")
local oth = require("bar.oth")

local grp = wibox.widget {
  {
    {
      sys.clock,
      spacing = dpi(15),
      layout = wibox.layout.fixed.horizontal,
    },
    left = dpi(10),
    right = dpi(10),
    bottom = dpi(2),
    top = dpi(2),
    widget = wibox.container.margin
  },
  shape = help.rrect(2),
  widget = wibox.container.background,
}


awful.screen.connect_for_each_screen(function(s)
  awful.wibar({
    position = "bottom",
    bg = beautiful.bg_normal,
    fg = beautiful.fg_normal,
    height = dpi(40),
    screen = s
  }):setup {
    layout = wibox.layout.align.horizontal,
    { -- Left
      {
        require('bar.tag')(s),
        require('bar.task')(s),
        layout = wibox.layout.fixed.horizontal,
      },
      left = dpi(10),
      right = dpi(5),
      top = dpi(5),
      widget = wibox.container.margin,
    },
    { -- Middle 
      layout = wibox.layout.fixed.horizontal,
    },
    { -- Right
      grp,

      left = dpi(10),
      right = dpi(10),
      bottom = dpi(5),
      top = dpi(5),
      widget = wibox.container.margin,
    },
  }
end)