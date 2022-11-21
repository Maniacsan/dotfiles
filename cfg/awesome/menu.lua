local awesomemenu = {
  { "Refresh", awesome.restart },
  { "Logout", function() awesome.quit() end },
  { "PowerOff", function() awful.spawn.with_shell('loginctl poweroff') end },
  { "Restart", function() awful.spawn.with_shell('loginctl reboot') end },
}

local terminals = {
  { "kitty", "kitty" },
  { "alacritty", "alacritty" },
}

local main = awful.menu {
  items = {
    { "Browser", "firefox" },
    {
      "Terminal",
      terminals,
    },
    { "Editor", "vscodium" },
    { "Files", "dolphin" },
    {
      "Awesome",
      awesomemenu,
    },
  }
}

main.wibox.shape = help.rrect(1)

root.buttons(gears.table.join(
  awful.button({ }, 3, function () main:toggle() end)
))
