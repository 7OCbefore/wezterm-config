local wezterm = require("wezterm")

return {
  term = "xterm-256color",
  animation_fps = 60,
  max_fps = 60,
  
  --OpenGL，WebGpu
  front_end = "WebGpu", 
  webgpu_power_preference = "HighPerformance", -- 如果不用 WebGpu，这行可以注释掉

  color_scheme = "Catppuccin Mocha, medium (base16)",

  -- 【修正】将分散的 colors 定义合并到一个表中
  colors = {
    -- 强制覆盖主题字体颜色
    foreground = "#FFFFFF",
    -- 滚动条颜色放这里
    scrollbar_thumb = "#34354D",
  },

  -- background
  window_background_opacity = 1.00,
  window_background_gradient = {
    colors = { "#1D261B", "#261A25" },
    orientation = { Linear = { angle = -45.0 } },
  },
  background = {
    {
      source = { File = wezterm.GLOBAL.background },
    },
    {
      source = { Color = "#1A1B26" },
      height = "100%",
      width = "100%",
      opacity = 0.95,
    },
  },

  -- scrollbar
  enable_scroll_bar = true,
  min_scroll_bar_height = "3cell",
  -- 这里的 colors = { ... } 之前是重复的，导致覆盖，已合并到上方

  -- tab bar
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = false,
  use_fancy_tab_bar = true,
  tab_max_width = 25,
  show_tab_index_in_tab_bar = true,
  switch_to_last_active_tab_when_closing_tab = true,

  -- cursor
  default_cursor_style = "BlinkingBlock",
  cursor_blink_ease_in = "Constant",
  cursor_blink_ease_out = "Constant",
  cursor_blink_rate = 700,

  -- window
  adjust_window_size_when_changing_font_size = false,
  window_decorations = "INTEGRATED_BUTTONS|RESIZE",
  integrated_title_button_style = "Windows",
  integrated_title_button_color = "auto",
  integrated_title_button_alignment = "Right",
  initial_cols = 106,
  initial_rows = 22,
  window_padding = {
    left = 5,
    right = 10,
    top = 12,
    bottom = 7,
  },
  window_close_confirmation = "AlwaysPrompt",
  window_frame = {
    active_titlebar_bg = "#0F2536",
    inactive_titlebar_bg = "#0F2536",
  },
  inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 },
}