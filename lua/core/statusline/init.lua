--[[ local gl = require('galaxyline')
local colors = require('colors')
local condition = require('galaxyline.condition')
local gls = gl.section
local extension = require("core.statusline.providers.extension")
local scrollBar = extension.scrollbar_instance
local cursor_word = extension.cursor_word
gl.short_line_list = {'tagbar', 'NvimTree', 'vista', 'dbui'}

gls.left[1] = {
  RainbowRed = {
    provider = function() return '▎' end,
    highlight = {colors.blue, colors.bg}
  }
}

gls.left[2] = {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local mode_color = {
        n = colors.blue,
        i = colors.green,
        v = colors.violet,
        [''] = colors.violet,
        V = colors.violet,
        c = colors.magenta,
        no = colors.red,
        s = colors.orange,
        S = colors.orange,
        [''] = colors.orange,
        ic = colors.yellow,
        R = colors.red,
        Rv = colors.violet,
        cv = colors.red,
        ce = colors.red,
        r = colors.cyan,
        rm = colors.cyan,
        ['r?'] = colors.cyan,
        ['!'] = colors.red,
        t = colors.red
      }
      vim.api
        .nvim_command('hi GalaxyViMode guifg=' .. mode_color[vim.fn.mode()])
      return '●'
    end,
    highlight = {colors.red, colors.bg, 'bold'},
    separator = ' ',
    separator_highlight = {'NONE', colors.bg}
  }
}

gls.left[3] = {
  FileSize = {
    provider = 'FileSize',
    condition = condition.buffer_not_empty,
    highlight = {colors.grey, colors.bg}
  }
}

gls.left[4] = {
  FileIcon = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    highlight = {
      require('galaxyline.provider_fileinfo').get_file_icon_color, colors.bg
    }
  }
}

gls.left[5] = {
  FileName = {
    provider = {'FileName'},
    condition = condition.buffer_not_empty,
    highlight = {colors.magenta, colors.bg, 'bold'}
  }
}

gls.left[6] = {
  WordCount = {provider = cursor_word, highlight = {colors.fg, colors.bg}}
}

-- gls.left[5] = {
--   BufferNumber = {
--     provider = 'BufferNumber',
--     condition = condition.buffer_not_empty,
--     icon = ' B',
--     separator = ' ',
--     separator_highlight = {'NONE',colors.bg},
--     highlight = {colors.red,colors.bg,'bold'},
--   }
-- }

-- gls.left[6] = {
--   LineInfo = {
--     provider = 'LineColumn',
--     separator = ' ',
--     separator_highlight = {'NONE',colors.bg},
--     highlight = {colors.fg,colors.bg},
--   },
-- }

gls.left[8] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red, colors.bg}
  }
}
gls.left[9] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.yellow, colors.bg}
  }
}

gls.left[10] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '  ',
    highlight = {colors.cyan, colors.bg}
  }
}

gls.left[11] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    highlight = {colors.blue, colors.bg}
  }
}

gls.mid[1] = {
  ShowLspClient = {
    provider = 'GetLspClient',
    condition = function()
      local tbl = {['dashboard'] = true, [''] = true}
      if tbl[vim.bo.filetype] then return false end
      return true
    end,
    icon = ' ',
    highlight = {colors.cyan, '#3a3d4d', 'bold'}
  }
}

gls.right[1] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {'NONE', colors.bg},
    highlight = {colors.yellow, colors.bg, 'bold'}
  }
}

gls.right[2] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    highlight = {colors.magenta, colors.bg, 'bold'}
  }
}

gls.right[3] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {colors.green, colors.bg},
    separator = ' ',
    separator_highlight = {'NONE', colors.bg}
  }
}
gls.right[4] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = condition.hide_in_width,
    icon = ' 柳',
    highlight = {colors.orange, colors.bg}
  }
}
gls.right[5] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {colors.red, colors.bg}
  }
}

gls.right[6] = {
  FileEncode = {
    provider = 'FileEncode',
    separator = ' ',
    separator_highlight = {'NONE', colors.bg},
    highlight = {colors.green, colors.bg, 'bold'}
  }
}

gls.right[7] = {
  FileFormat = {
    provider = 'FileFormat',
    separator = ' ',
    separator_highlight = {'NONE', colors.bg},
    highlight = {colors.green, colors.bg, 'bold'}
  }
}

gls.right[8] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = {'NONE', colors.bg},
    --    separator = ' ',
    --    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.fg, colors.bg, 'bold'}
  }
}
-- gls.right[6] = {
--   RainbowBlue = {
--     provider = function() return ' ▊' end,
--     highlight = {colors.blue,colors.bg}
--   },
-- }
--
--

gls.right[10] = {
  ScrollBar = {provider = scrollBar, highlight = {colors.blue, colors.bg}}
}

-- gls.right[10] = {
--   ViMode = {
--     provider = function()
--       -- auto change color according the vim mode
--       local mode_color = {
--         n = colors.blue,
--         i = colors.green,
--         v = colors.violet,
--         [''] = colors.violet,
--         V = colors.violet,
--         c = colors.magenta,
--         no = colors.red,
--         s = colors.orange,
--         S = colors.orange,
--         [''] = colors.orange,
--         ic = colors.yellow,
--         R = colors.red,
--         Rv = colors.violet,
--         cv = colors.red,
--         ce = colors.red,
--         r = colors.cyan,
--         rm = colors.cyan,
--         ['r?'] = colors.cyan,
--         ['!'] = colors.red,
--         t = colors.red
--       }
--       vim.api
--         .nvim_command('hi GalaxyViMode guifg=' .. mode_color[vim.fn.mode()])
--       return ' ▊'
--     end,
--     highlight = {colors.red, colors.bg, 'bold'}
--   }
-- }

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = ' ',
    separator_highlight = {'NONE', colors.bg},
    highlight = {colors.blue, colors.bg, 'bold'}
  }
}

gls.short_line_left[2] = {
  SFileName = {
    provider = 'SFileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.fg, colors.bg, 'bold'}
  }
}

gls.short_line_right[1] = {
  BufferIcon = {provider = 'BufferIcon', highlight = {colors.fg, colors.bg}}
} ]] local custom_theme = require 'lualine.themes.auto'
-- Change the background of lualine_c section for normal mode
custom_theme.visual.a.bg = '#bd93f9' -- rgb colors are supported
custom_theme.visual.b.fg = '#bd93f9' -- rgb colors are supported
custom_theme.insert.a.bg = '#abe15b' -- rgb colors are supported
custom_theme.insert.b.fg = '#abe15b' -- rgb colors are supported

require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = custom_theme,
    component_separators = {left = '', right = ''},
    section_separators = {left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
      'branch', 'diff', {'diagnostics', sources = {'nvim_lsp', 'coc'}}
    },
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
