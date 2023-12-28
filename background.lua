local default_config = require("color")


local background_module = {}

local colors_config = {
  -- default text color 
  foreground = '#0f0',
  -- The default background color
  background = '#000',

  -- Overrides the cell background color when the current cell is occupied by the
  -- cursor and the cursor style is set to Block
  cursor_bg = '#000',

  -- Overrides the text color when the current cell is occupied by the cursor
  cursor_fg = '#FF0000',
  -- Specifies the border color of the cursor when the cursor style is set to Block,
  -- or the color of the vertical or horizontal bar when the cursor style is set to
  -- Bar or Underline.
  cursor_border = '#00ff00',
  -- the foreground color of selected text
  selection_fg = '#f0ff00',
  -- The color of the scrollbar "thumb"; the portion that represents the current viewport
  scrollbar_thumb = '#00ff00',


    -- The color of the split lines between panes
    split = '#0d0',
    compose_cursor = 'orange',

}
function background_module.changeBg(window,cmd)
  if cmd == 'zsh' then 
    window:set_config_overrides({ 
      window_background_image = '/home/joao/Pictures/blood_moon.jpg',
      window_background_image_hsb = {
        -- Darken the background image by reducing it to 1/3rd
        brightness = 0.3,
  
        -- You can adjust the hue by scaling its value.
        -- a multiplier of 1.0 leaves the value unchanged.
        hue = 1.0,
  
        -- You can adjust the saturation also.
        saturation = 1.0,
      },
    })
  elseif cmd == 'bat' or cmd == 'vim' then 
    window:set_config_overrides({ 
      colors = colors_config,
      window_background_opacity=0.8,

    })
  else
    window:set_config_overrides({ 
      colors = default_config,
    })

  end
  

end

return background_module