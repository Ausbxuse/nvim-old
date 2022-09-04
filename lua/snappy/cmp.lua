local cmp = {
  CmpItemAbbrMatch                = { bg = "NONE",           fg = C.doom_blue,   style = "bold" },
  CmpItemAbbrMatchFuzzy           = { bg = "NONE",           fg = C.orange,      style = "bold" },
  CmpItemKindFunction             = { bg = C.atom_purple,    fg = C.fg },
  CmpItemKindMethod               = { bg = C.atom_red,       fg = C.fg },
  -- CmpItemKindVariable          = {bg = C.atom_light_blue, fg = C.fg},
  CmpItemKindVariable             = { bg = C.atom_blue,      fg = C.fg },
  CmpItemKindText                 = { bg = C.atom_green,     fg = C.fg },
  CmpItemKind                     = { bg = C.atom_grey,      fg = C.fg },
  CmpItemKindKeyword              = { bg = C.atom_green,     fg = C.fg },
  -- CmpItemKindDefaultKeyword    = {bg = C.atom_orange,     fg = C.fg},
  CmpItemKindTypeParameter        = { bg = C.atom_cyan,      fg = C.fg },
  CmpItemKindTypeParameterDefault = { bg = C.atom_cyan,      fg = C.fg },
  CmpItemKindClass                = { bg = C.atom_red,       fg = C.fg },
  CmpItemKindField                = { bg = C.atom_red,       fg = C.fg },
  CmpItemKindSnippet              = { bg = C.atom_blue,      fg = C.fg },
  CmpItemKindConstant             = { bg = C.atom_green,     fg = C.fg },
  CmpItemMenu                     = {                        fg = C.atom_purple, style = "italic" }
}

return cmp
