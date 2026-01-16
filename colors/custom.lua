-- A slightly altered version of catppucchin mocha
local mocha = {
   rosewater = '#f5e0dc',
   flamingo = '#f2cdcd',
   pink = '#f5c2e7',
   mauve = '#cba6f7',
   red = '#f38ba8',
   maroon = '#eba0ac',
   peach = '#fab387',
   yellow = '#f9e2af',
   green = '#a6e3a1',
   teal = '#94e2d5',
   sky = '#89dceb',
   sapphire = '#74c7ec',
   blue = '#89b4fa',
   lavender = '#b4befe',
   text = '#cdd6f4',
   subtext1 = '#bac2de',
   subtext0 = '#a6adc8',
   overlay2 = '#9399b2',
   overlay1 = '#7f849c',
   overlay0 = '#6c7086',
   surface2 = '#585b70',
   surface1 = '#45475a',
   surface0 = '#313244',
   base = '#1f1f28',
   mantle = '#181825',
   crust = '#11111b',
}

local colorscheme = {
   foreground = '#FFFFFF', -- 主字体颜色 <button class="citation-flag" data-index="5">
   background = mocha.base, -- 深色背景保持高对比
   ansi = {
      '#0C0C0C', -- 黑
      '#C50F1F', -- 红
      '#13A10E', -- 绿
      '#C19C00', -- 黄
      '#0037DA', -- 蓝
      '#881798', -- 紫
      '#3A96DD', -- 青
      '#FFFFFF', -- 白（原 #CCCCCC）<button class="citation-flag" data-index="2"><button class="citation-flag" data-index="6">
   },
   brights = {
      '#767676', -- 亮黑
      '#E74856', -- 亮红
      '#16C60C', -- 亮绿
      '#F9F1A5', -- 亮黄
      '#3B78FF', -- 亮蓝
      '#B4009E', -- 亮紫
      '#61D6D6', -- 亮青
      '#FFFFFF', -- 亮白（原 #F2F2F2）<button class="citation-flag" data-index="2">
   },
   tab_bar = {
      background = 'rgba(0, 0, 0, 0.4)',
      active_tab = {
         bg_color = mocha.surface2,
         fg_color = mocha.text,
      },
      inactive_tab = {
         bg_color = mocha.surface0,
         fg_color = mocha.subtext1,
      },
      inactive_tab_hover = {
         bg_color = mocha.surface0,
         fg_color = mocha.text,
      },
      new_tab = {
         bg_color = mocha.base,
         fg_color = mocha.text,
      },
      new_tab_hover = {
         bg_color = mocha.mantle,
         fg_color = mocha.text,
         italic = true,
      },
   },
   visual_bell = mocha.surface0,
   indexed = {
      [16] = mocha.peach,
      [17] = mocha.rosewater,
   },
   scrollbar_thumb = mocha.surface2,
   split = mocha.overlay0,
   compose_cursor = mocha.flamingo, -- nightbuild only
}

return colorscheme
