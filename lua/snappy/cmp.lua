local cmp = {
  CmpItemAbbrMatch                = { bg = "NONE",           fg = C.doom_blue,   style = "bold" },
  CmpItemAbbrMatchFuzzy           = { bg = "NONE",           fg = C.orange,      style = "bold" },
  CmpItemKindFunction             = { bg = C.atom_purple_fg, fg = C.atom_purple },
  CmpItemKindMethod               = { bg = C.atom_red_fg,    fg = C.atom_red },
  -- CmpItemKindVariable          = {bg = C.atom_light_blue, fg = C.fg},
  CmpItemKindVariable             = { bg = C.atom_blue_fg,   fg = C.atom_blue },
  CmpItemKindText                 = { bg = C.atom_green_fg,  fg = C.atom_green },
  CmpItemKind                     = { bg = C.atom_grey_fg,   fg = C.atom_grey },
  CmpItemKindKeyword              = { bg = C.atom_green_fg,  fg = C.atom_green },
  -- CmpItemKindDefaultKeyword    = {bg = C.atom_orange_fg,  fg = C.atom_orange },
  CmpItemKindTypeParameter        = { bg = C.atom_cyan_fg,   fg = C.atom_cyan },
  CmpItemKindTypeParameterDefault = { bg = C.atom_cyan_fg,   fg = C.atom_cyan },
  CmpItemKindClass                = { bg = C.atom_red_fg,    fg = C.atom_red },
  CmpItemKindField                = { bg = C.atom_red_fg,    fg = C.atom_red },
  CmpItemKindSnippet              = { bg = C.atom_blue_fg,   fg = C.atom_blue },
  CmpItemKindConstant             = { bg = C.atom_green_fg,  fg = C.atom_green },
  CmpItemMenu                     = {                        fg = C.atom_purple, style = "italic" }
}

return cmp
