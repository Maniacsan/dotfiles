return function(s)  
  local tag = awful.widget.taglist {
    screen  = s,
    filter  = awful.widget.taglist.filter.selected,
    widget_template = {
      {
        id = 'text_role',
        align = 'center',
        widget = wibox.widget.textbox,
      },
      top = dpi(5),
      bottom = dpi(5),
      left = dpi(10),
      right = dpi(10),
      widget = wibox.container.margin
    },
    shape = help.rrect(2),
    id = 'background_role',
    widget = wibox.container.background,

    create_callback = function(self, c3, index, objects) 
      self:get_children_by_id('text_role').markup = index
    end,
    update_callback = function(self, c3, index, objects) 
      self:get_children_by_id('text_role').markup = index
    end
  }
  return tag
end
