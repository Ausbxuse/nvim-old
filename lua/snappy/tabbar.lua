local highlight = { 
  BufferCurrent =       { fg = C.ui_3,        bg =  C.bg_current,    style = 'none'},
  BufferCurrentIndex =  { fg = C.ui_6,        bg =  C.bg_current,    style = 'none'},
  BufferCurrentMod =    { fg = C.green,     bg =  C.bg_current,    style = 'italic'},
  BufferCurrentSign =   { fg = C.blue,      bg =  C.bg_current,    style = 'none'},
  BufferCurrentTarget = { fg = C.red,       bg =  C.bg_current,    style = 'bold'},

  BufferVisible =       { fg = C.ui_4,        bg =  C.bg_visible,    style = 'none'},
  BufferVisibleIndex =  { fg = C.ui_3,        bg =  C.bg_visible,    style = 'none'},
  BufferVisibleMod =    { fg = C.orange,    bg =  C.bg_visible,    style = 'none'},
  BufferVisibleSign =   { fg = C.ui_9,        bg =  C.bg_visible,    style = 'none'},
  BufferVisibleTarget = { fg = C.red,       bg =  C.bg_visible,    style = 'bold'},

  BufferInactive =      { fg =  C.ui_6,       bg =  C.bg_other,      style = 'none'},
  BufferInactiveIndex = { fg =  C.ui_6,       bg =  C.bg_other,      style = 'none'},
  BufferInactiveMod =   { fg =  C.yellow,   bg =  C.bg_other,      style = 'none'},
  BufferInactiveSign =  { fg =  C.ui_9,       bg =  C.bg_other,      style = 'none'},
  BufferInactiveTarget ={ fg =  C.red,      bg =  C.bg_other,      style = 'bold'},

  BufferTabpages =      { fg =  C.blue,     bg =  C.bg_statusline, style = 'bold'},
  BufferTabpageFill =   { fg =  C.ui_9,       bg =  C.bg_other,      style = 'bold'},

  BufferPart =          { fg = C.ui_9,        bg =  C.bg_other,      style = 'bold'},

  -- BufferCurrent = { fg = C.fg, bg = C.bg },
  -- BufferCurrentIndex = { fg = C.fg, bg = C.bg },
  -- BufferCurrentMod = { fg = C.yellow, bg = C.bg },
  -- BufferCurrentSign = { fg = '#6eaeea', bg = C.bg },
  -- BufferCurrentTarget = { fg = C.red, bg = C.bg, style = "bold" },
  -- BufferVisible = { fg = C.fg, bg = C.bg },
  -- BufferVisibleIndex = { fg = C.fg, bg = C.bg },
  -- BufferVisibleMod = { fg = C.yellow, bg = C.bg },
  -- BufferVisibleSign = { fg = '#6eaeea', bg = C.bg },
  -- BufferVisibleTarget = { fg = C.red, bg = C.bg, style = "bold" },
  -- BufferInactive = { fg = C.gray, bg = C.bg_alt },
  -- BufferInactiveIndex = { fg = C.gray, bg = C.bg_alt },
  -- BufferInactiveMod = { fg = C.yellow, bg = C.bg_alt },
  -- BufferInactiveSign = { fg = C.gray, bg = C.bg_alt },
  -- BufferInactiveTarget = { fg = C.red, bg = C.bg_alt, style = "bold" },
  -- StatusLine = { fg = C.bg_alt },
  -- StatusLineNC = { fg = C.bg_alt },
  -- StatusLineSeparator = { fg = C.bg_alt },
  -- StatusLineTerm = { fg = C.bg_alt },
  -- StatusLineTermNC = { fg = C.bg_alt },
}

return highlight
