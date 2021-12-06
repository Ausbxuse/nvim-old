local static_colors = {
  blue = "#57c7ff",
  cyan = "#62d8f1",
  red = "#ff2740",
  green = "#a6e22e",
  yellow = "#f3f99d",
  orange = "#fd972f",
  purple = "#ae81ff",
  magenta = "#fc1a70",
  hint_blue = "#4FC1FF",
  white = "#efefef",

  ui_0 = '#F9F9F9',
  ui_1 = '#f9f9ff',
  ui_2 = '#eff0eb',
  ui_3 = '#e2e4e5',
  ui_4 = '#a1a6a8',
  ui_5 = '#848688',
  ui_6 = '#73797e',
  ui_7 = '#5e6c70',
  ui_8 = '#606580',
  ui_9 = '#3a3d4d',
  ui_10 = '#282a36',
  ui_11 = '#1c1f24',
  ui_12 = '#192224',
  bg = '#282c34',
  bg_alt = '#21242b',
  bg_highlight = '#2E323C',
  fg = '#f9f9ff'
}

local flex_colors = {
  grey = static_colors.ui_4,
  light_grey = static_colors.ui_3,
  bg_popup = static_colors["ui_9"],
  bg_statusline = static_colors.ui_9,
  bg_visual = static_colors.ui_9,
  bg_current = static_colors.bg,
  bg_visible = static_colors.bg,
  bg_other = static_colors.ui_11,
  fg_highlight = static_colors.fg,
  highlight = static_colors.blue,
  highlight_color = static_colors.ui_12
}

-- concat two tables
for i, v in pairs(flex_colors) do static_colors[i] = v end

return static_colors
