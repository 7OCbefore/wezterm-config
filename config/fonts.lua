local wezterm = require('wezterm')

local font = 'JetBrainsMono Nerd Font'
local font_size = 14

return {
   font = wezterm.font(font, { weight = 'Regular', style = 'Normal' }),
   font_size = font_size,

   freetype_load_target = 'Normal',
   freetype_render_target = 'Normal',
}
