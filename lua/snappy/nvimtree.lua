local NvimTree = {
  NvimTreeFolderName = {fg = C.blue, style = 'bold'},
  NvimTreeFolderIcon = {fg = C.blue},
  --  NvimTreeIndentMarker = { fg = C.gray },
  NvimTreeNormal = {fg = C.light_gray, bg = 'NONE'},
  NvimTreeVertSplit = {fg = C.bg_alt, bg = C.bg_alt},
  NvimTreeOpenedFolderName = {fg = C.cyan, style = "italic"},
  NvimTreeImageFile = {fg = C.purple},
  NvimTreeSpecialFile = {fg = C.orange},
  NvimTreeGitStaged = {fg = C.green},
  NvimTreeGitNew = {fg = C.green},
  NvimTreeGitDirty = {fg = C.green},
  NvimTreeGitDeleted = {fg = C.red},
  NvimTreeGitMerge = {fg = C.yellow},
  NvimTreeGitRenamed = {fg = C.yellow},
  NvimTreeSymlink = {fg = C.cyan},
  NvimTreeRootFolder = {fg = C.fg, style = "bold"},
  NvimTreeExecFile = {fg = C.green},
}

return NvimTree
