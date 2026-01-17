local Config = require('config')
local wezterm = require('wezterm')

wezterm.on('gui-startup', function(cmd)
   local _, _, window = wezterm.mux.spawn_window(cmd or {})
   local gui_window = window:gui_window()
   local screen = wezterm.gui.screens().active
   local dims = gui_window:get_dimensions()
   local x = math.floor(screen.x + (screen.width - dims.pixel_width) / 2)
   local y = math.floor(screen.y + (screen.height - dims.pixel_height) / 2)
   gui_window:set_position(x, y)
end)

require('utils.backdrops'):set_files():random()


require('events.right-status').setup()
require('events.left-status').setup()
require('events.tab-title').setup()
require('events.new-tab-button').setup()

return Config:init()
   :append(require('config.appearance'))
   :append(require('config.bindings'))
   :append(require('config.domains'))
   :append(require('config.fonts'))
   :append(require('config.general'))
   :append(require('config.launch')).options
