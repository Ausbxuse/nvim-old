local LSP = {
  LspDiagnosticsDefaultHint = {fg = '#6eaeea'},
  LspDiagnosticsDefaultWarning = {fg = 'Orange'},
  LspDiagnosticsDefaultError = {fg = 'Red'},
  LspDiagnosticsDefaultInformation = {fg = '#Deebfe'},
  LspDiagnosticsVirtualTextError = {fg = 'Red'},
  LspDiagnosticsVirtualTextWarning = {fg = 'Orange'},
  LspDiagnosticsVirtualTextInformation = {fg = C.yellow},
  LspDiagnosticsVirtualTextHint = {fg = '#6eaeea'},
  LspDiagnosticsFloatingError = {fg = 'Red'},
  LspDiagnosticsFloatingWarning = {fg = 'Orange'},
  LspDiagnosticsFloatingInformation = {fg = C.yellow},
  LspDiagnosticsFloatingHint = {fg = '#6eaeea'},
  LspDiagnosticsSignError = {fg = 'Red'},
  LspDiagnosticsSignWarning = {fg = 'Orange'},
  LspDiagnosticsSignInformation = {fg = C.yellow},
  LspDiagnosticsSignHint = {fg = '#6eaeea'},
  LspDiagnosticsError = {fg = 'Red'},
  LspDiagnosticsWarning = {fg = 'Orange'},
  LspDiagnosticsInformation = {fg = C.yellow},
  LspDiagnosticsHint = {fg = '#6eaeea'},
  LspDiagnosticsUnderlineError = {fg = 'Red', style = 'underline'},
  LspDiagnosticsUnderlineWarning = {fg = 'Orange', style = 'underline'},
  LspDiagnosticsUnderlineInformation = {fg = C.yellow, style = 'underline'},
  LspDiagnosticsUnderlineHint = {fg = '#6eaeea', style = 'underline'},
  QuickScopePrimary = {fg = C.cyan, style = "underline"},
  QuickScopeSecondary = {fg = C.purple_test, style = "underline"},
  TelescopeSelection = {fg = '#6eaeea'},
  TelescopeMatching = {fg = C.yellow, style = "bold"},
  TelescopeBorder = {fg = C.cyan},

  NvimTreeFolderName = {fg = C.blue, style = 'bold'},
  NvimTreeFolderIcon = {fg = C.blue},
  --  NvimTreeIndentMarker = { fg = C.gray },
  NvimTreeNormal = {fg = C.light_gray, bg = C.bg_alt},
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
  CodiVirtualText = {fg = C.red},
  --  IndentBlanklineContextChar = { fg = C.accent },
  DashboardHeader = {fg = C.blue},
  DashboardCenter = {fg = C.purple},
  DashboardFooter = {fg = C.cyan},
  CompeDocumentation = {bg = C.bg_alt},
  DiffViewNormal = {fg = C.gray, bg = C.bg_alt},
  DiffviewStatusAdded = {fg = C.green},
  DiffviewStatusModified = {fg = C.yellow},
  DiffviewStatusRenamed = {fg = C.yellow},
  DiffviewStatusDeleted = {fg = C.red},
  DiffviewFilePanelInsertion = {fg = C.green},
  DiffviewFilePanelDeletion = {fg = C.red},
  DiffviewVertSplit = {bg = C.bg},
  diffAdded = {fg = C.green},
  diffRemoved = {fg = C.red},
  diffFileId = {fg = C.blue, style = "bold,reverse"},
  diffFile = {fg = C.bg_alt},
  diffNewFile = {fg = C.green},
  diffOldFile = {fg = C.red},
  debugPc = {bg = C.cyan},
  debugBreakpoint = {fg = C.red, style = "reverse"}
}

return LSP