local LSP = {
  LspDiagnosticsDefaultHint            = {fg = C.doom_blue                           },
  LspDiagnosticsDefaultWarning         = {fg = C.orange                              },
  LspDiagnosticsDefaultError           = {fg = C.red                                 },
  LspDiagnosticsDefaultInformation     = {fg = C.info                                },
  LspDiagnosticsVirtualTextError       = {fg = C.red                                 },
  LspDiagnosticsVirtualTextWarning     = {fg = C.orange                              },
  LspDiagnosticsVirtualTextInformation = {fg = C.yellow                              },
  LspDiagnosticsVirtualTextHint        = {fg = C.doom_blue                           },
  LspDiagnosticsFloatingError          = {fg = C.red                                 },
  LspDiagnosticsFloatingWarning        = {fg = C.orange                              },
  LspDiagnosticsFloatingInformation    = {fg = C.yellow                              },
  LspDiagnosticsFloatingHint           = {fg = C.doom_blue                           },
  LspDiagnosticsSignError              = {fg = C.red                                 },
  LspDiagnosticsSignWarning            = {fg = C.orange                              },
  LspDiagnosticsSignInformation        = {fg = C.yellow                              },
  LspDiagnosticsSignHint               = {fg = C.doom_blue                           },
  LspDiagnosticsError                  = {fg = C.red                                 },
  LspDiagnosticsWarning                = {fg = C.orange                              },
  LspDiagnosticsInformation            = {fg = C.yellow                              },
  LspDiagnosticsHint                   = {fg = C.doom_blue                           },
  LspDiagnosticsUnderlineError         = {fg = C.red,         style = 'underline'    },
  LspDiagnosticsUnderlineWarning       = {fg = C.orange,      style = 'underline'    },
  LspDiagnosticsUnderlineInformation   = {fg = C.yellow,      style = 'underline'    },
  LspDiagnosticsUnderlineHint          = {fg = C.doom_blue,   style = 'underline'    },
  QuickScopePrimary                    = {fg = C.cyan,        style = "underline"    },
  QuickScopeSecondary                  = {fg = C.purple_test, style = "underline"    },
  TelescopeSelection                   = {fg = C.doom_blue                           },
  TelescopeMatching                    = {fg = C.yellow,      style = "bold"         },
  TelescopeBorder                      = {fg = C.cyan                                },

  CodiVirtualText                      = {fg = C.red                                 },
  --  IndentBlanklineContextChar       = { fg = C.accent                             },
  DashboardHeader                      = {fg = C.blue                                },
  DashboardCenter                      = {fg = C.purple                              },
  DashboardFooter                      = {fg = C.cyan                                },
  CompeDocumentation                   = {bg = C.bg_alt                              },
  DiffViewNormal                       = {fg = C.gray, bg = C.bg_alt                 },
  DiffviewStatusAdded                  = {fg = C.green                               },
  DiffviewStatusModified               = {fg = C.yellow                              },
  DiffviewStatusRenamed                = {fg = C.yellow                              },
  DiffviewStatusDeleted                = {fg = C.red                                 },
  DiffviewFilePanelInsertion           = {fg = C.green                               },
  DiffviewFilePanelDeletion            = {fg = C.red                                 },
  DiffviewVertSplit                    = {bg = C.bg                                  },
  diffAdded                            = {fg = C.green                               },
  diffRemoved                          = {fg = C.red                                 },
  diffFileId                           = {fg = C.blue,        style = "bold,reverse" },
  diffFile                             = {fg = C.bg_alt                              },
  diffNewFile                          = {fg = C.green                               },
  diffOldFile                          = {fg = C.red                                 },
  debugPc                              = {bg = C.cyan                                },
  debugBreakpoint                      = {fg = C.red,         style = "reverse"      }
}

return LSP
