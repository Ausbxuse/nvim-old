local static_colors = {
  red             = "#ff2740",
  magenta         = "#fc1a70",
  orange          = "#fd972f",
  yellow          = "#f3f99d",
  green           = "#a6e22e",
  cyan            = "#62d8f1",
  blue            = "#57c7ff",
  hint_blue       = "#4FC1FF",
  purple          = "#ae81ff",
  white           = "#efefef",
  info            = "#Deebfe",

  cyan_bg         = "#002c40",
  magenta_bg      = "#",
  purple_bg       = "#",

  doom_magenta    = "#fc1a70",
  doom_red        = "#ec5f67",
  doom_orange     = "#fd971f",
  doom_yellow     = "#f4bf75",
  doom_green      = "#a6e22e",
  doom_cyan       = "#a1efe4",
  doom_blue       = "#51afef",
  doom_violet     = "#c678dd",
  doom_grey       = "#9ca0a4",
  doom_fg         = "#eaeaea",
  doom_bg         = "#282a36",
  doom_darkblue   = "#081633",

  atom_red        = "#ff9191",
  atom_orange     = "#eda55d",
  atom_green      = "#9acd68",
  atom_cyan       = "#6ecfcf",
  atom_light_blue = "#9cdcfe",
  atom_blue       = "#7dbeff",
  atom_purple     = "#cb96ff",
  atom_grey       = "#a6b5c5",

  atom_red_fg        = "#ec5252",
  atom_orange_fg     = "#c97016",
  atom_green_fg      = "#5da713",
  atom_cyan_fg       = "#13afaf",
  atom_light_blue_fg = "#9cdcfe",
  atom_blue_fg       = "#3890e9",
  atom_purple_fg     = "#a359ed",
  atom_grey_fg       = "#6b859e",

  pmenu_fg        = "#b3bac7",
  pmenu_bg        = "#2d2f39",
  pmenusel_fg     = "#80bbfe",
  pmenusel_bg     = "#3d4a60",
  pmenu_thumb     = "#666660",

  ui_0            = "#F9F9F9",
  ui_1            = "#f9f9ff",
  ui_2            = "#eff0eb",
  ui_3            = "#e2e4e5",
  ui_4            = "#a1a6a8",
  ui_5            = "#848688",
  ui_6            = "#73797e",
  ui_7            = "#5e6c70",
  ui_8            = "#606580",
  ui_9            = "#3a3d4d",
  ui_10           = "#282a36",
  ui_11           = "#1c1f24",
  ui_12           = "#192224",
  -- bg              = "#16161E",
  bg              = "NONE",
  bg_alt          = "#21242b",
  bg_highlight    = "#2E323C",
  fg              = "#f9f9ff"
}

local flex_colors = {
  grey            = static_colors.ui_4,
  light_grey      = static_colors.ui_3,
  bg_popup        = static_colors["ui_9"],
  bg_statusline   = static_colors.ui_9,
  bg_visual       = static_colors.ui_9,
  bg_current      = static_colors.bg,
  bg_visible      = static_colors.bg,
  bg_other        = static_colors.ui_11,
  fg_highlight    = static_colors.fg,
  highlight       = static_colors.blue,
  highlight_color = static_colors.ui_12
}

-- concat two tables
for i, v in pairs(flex_colors) do static_colors[i] = v end

return static_colors
