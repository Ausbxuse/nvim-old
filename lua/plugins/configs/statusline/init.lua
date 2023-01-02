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
} ]] 

local function getWords()
  if vim.bo.filetype == "md" or vim.bo.filetype == "txt" or vim.bo.filetype == "markdown" then
    if vim.fn.wordcount().visual_words == 1 then
      return tostring(vim.fn.wordcount().visual_words) .. " word"
    elseif not (vim.fn.wordcount().visual_words == nil) then
      return tostring(vim.fn.wordcount().visual_words) .. " words"
    else
      return tostring(vim.fn.wordcount().words) .. " words"
    end
  else
    return ""
  end
end


local function trunc(trunc_width, trunc_len, hide_width, no_ellipsis)
  return function(str)
    local win_width = vim.fn.winwidth(0)
    if hide_width and win_width < hide_width then
      return ""
    elseif trunc_width and trunc_len and win_width < trunc_width and #str > trunc_len then
      return str:sub(1, trunc_len) .. (no_ellipsis and "" or "...")
    end
    return str
  end
end

local custom_theme = require 'lualine.themes.auto'
-- Change the background of lualine_c section for normal mode
custom_theme.normal.a.fg = '#5fdaff' -- rgb colors are supported
custom_theme.normal.a.bg = '#2c2e3b' -- rgb colors are supported
custom_theme.normal.b.fg = '#5fdaff' -- rgb colors are supported
custom_theme.normal.c.bg = '#171920' -- rgb colors are supported
custom_theme.command.c.bg = '#171920' -- rgb colors are supported
custom_theme.replace.a.bg = '#ff4a00' -- rgb colors are supported
custom_theme.replace.b.fg = '#ff4a00' -- rgb colors are supported
custom_theme.replace.c.bg = '#171920' -- rgb colors are supported
custom_theme.visual.a.fg = '#bd93f9' -- rgb colors are supported
custom_theme.visual.a.bg = '#2c2e3b' -- rgb colors are supported
custom_theme.visual.b.fg = '#bd93f9' -- rgb colors are supported
custom_theme.visual.c.bg = '#171920' -- rgb colors are supported
custom_theme.insert.a.fg = '#abe15b' -- rgb colors are supported
custom_theme.insert.a.bg = '#2c2e3b' -- rgb colors are supported
custom_theme.insert.b.fg = '#abe15b' -- rgb colors are supported
custom_theme.insert.c.bg = '#171920' -- rgb colors are supported

require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = custom_theme,
    component_separators = {left = '', right = ''},
    section_separators = {left = '', right = ''},
    --[[ component_separators = {left = '', right = ''},
    section_separators = {left = '', right = ''}, ]]
    disabled_filetypes = {},
    always_divide_middle = true
  },
  sections = {
    lualine_a = {{ "mode", fmt = trunc(200, 4, nil, true) }},
    lualine_b = {
      'branch', 'diff', {'diagnostics', sources = {'nvim_diagnostic', 'coc'}}
    },
    lualine_c = {
      {
        'filename',
        file_status = true,      -- Displays file status (readonly status, modified status)
        path = 2,                -- 0: Just the filename
        -- 1: Relative path
        -- 2: Absolute path

        shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
        -- for other components. (terrible name, any suggestions?)
        symbols = {
          modified = "落", -- Text to show when the file is modified.
          readonly = "", -- Text to show when the file is non-modifiable or readonly.
          unnamed = "[No Name]", -- Text to show for unnamed buffers.
          newfile = "[New]", -- Text to show for new created file before first writting

        }
      },

      {
        getWords,
        color = { fg = "#333333", bg = "#eeeeee" },
        separator = { left = "", right = "" },
      },
      {'filesize'}

    },
    lualine_x = {'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {"os.date('%H:%M')"}
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


-- new config


function searchResult(quick)
  if vim.v.hlsearch == 0 then
    return ""
  end
  local last_search = vim.fn.getreg("/")
  if not last_search or last_search == "" then
    return ""
  end
  local searchcount = vim.fn.searchcount({ maxcount = 0 })
  return vim.pesc(last_search) .. " (" .. searchcount.current .. "/" .. searchcount.total .. ")"
end

local function place()
  local colPre = "C:"
  local col = "%c"
  local linePre = " L:"
  local line = "%l/%L"
  return string.format("%s%s%s%s", colPre, col, linePre, line)
end

--- @param trunc_width number trunctates component when screen width is less then trunc_width
--- @param trunc_len number truncates component to trunc_len number of chars
--- @param hide_width number hides component when window width is smaller then hide_width
--- @param no_ellipsis boolean whether to disable adding '...' at end after truncation
--- return function that can format the component accordingly

local function diff_source()
  local gitsigns = vim.b.gitsigns_status_dict
  if gitsigns then
    return {
      added = gitsigns.added,
      modified = gitsigns.changed,
      removed = gitsigns.removed,
    }
  end
end

local function window()
  return vim.api.nvim_win_get_number(0)
end
-- get colors from Nightfox to use in the words count
-- local nfColors = require("nightfox.colors").init("nordfox")

-- print(vim.inspect(nfColors))
-- require("lualine").setup({
--   options = {
--     icons_enabled = true,
--     theme = custom_theme,
--     component_separators = { " ", " " },
--     section_separators = { left = "", right = "" },
--     disabled_filetypes = {},
--   },
--   sections = {
--     lualine_a = {
--       { "mode", fmt = trunc(80, 1, nil, true) },
--     },
--     lualine_b = {
--       { "branch", icon = "" },
--       {
--         "diff",
--         source = diff_source,
--         color_added = "#a7c080",
--         color_modified = "#ffdf1b",
--         color_removed = "#ff6666",
--       },
--     },
--     lualine_c = {
--       { "diagnostics", sources = { "nvim_diagnostic" } },
--       function()
--         return "%="
--       end,
--       {
--         "filename",
--         path = 1,
--         shorting_target = 40,
--         symbols = {
--           modified = "落", -- Text to show when the file is modified.
--           readonly = "", -- Text to show when the file is non-modifiable or readonly.
--           unnamed = "[No Name]", -- Text to show for unnamed buffers.
--           newfile = "[New]", -- Text to show for new created file before first writting
--         },
--       },
--       {
--         getWords,
--         color = { fg = "#333333", bg = "#eeeeee" },
--         separator = { left = "", right = "" },
--       },
--       {
--         searchResult,
--       },
--     },
--     lualine_x = { { "filetype", icon_only = true } },
--     -- lualine_y = { { require("auto-session-library").current_session_name } },
--     lualine_y = { 'progress' },
--     lualine_z = {
--       { place, padding = { left = 1, right = 1 } },
--     },
--   },
--   inactive_sections = {
--     lualine_a = { window },
--     lualine_b = {
--       {
--         "diff",
--         source = diff_source,
--         color_added = "#a7c080",
--         color_modified = "#ffdf1b",
--         color_removed = "#ff6666",
--       },
--     },
--     lualine_c = {
--       function()
--         return "%="
--       end,
--       {
--         "filename",
--         path = 1,
--         shorting_target = 40,
--         symbols = {
--           modified = "落", -- Text to show when the file is modified.
--           readonly = "", -- Text to show when the file is non-modifiable or readonly.
--           unnamed = "[No Name]", -- Text to show for unnamed buffers.
--           newfile = "[New]", -- Text to show for new created file before first writting
--         },
--       },
--     },
--     lualine_x = {
--       { place, padding = { left = 1, right = 1 } },
--     },
--     lualine_y = {},
--     lualine_z = {},
--   },
--   tabline = {},
--   extensions = {
--     "quickfix",
--   },
-- })





-- Eviline config for lualine
-- Author: shadmansaleh
-- Credit: glepnir
--[[ local lualine = require('lualine')

-- Color table for highlights
-- stylua: ignore
local colors = {
  bg = '#282a36',
  fg = '#eaeaea',
  yellow = '#f4bf75',
  cyan = '#a1efe4',
  darkblue = '#081633',
  green = '#a6e22e',
  orange = '#fd971f',
  violet = '#c678dd',
  magenta = '#fc1a70',
  blue = '#51afef';
  red = '#ec5f67';
  grey = '#9ca0a4';
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local config = {
  options = {
    -- Disable sections and component separators
    component_separators = '',
    section_separators = '',
    theme = {
      -- We are going to use lualine_c an lualine_x as left and
      -- right section. Both are highlighted by c theme .  So we
      -- are just setting default looks o statusline
      normal = { c = { fg = colors.fg, bg = colors.bg } },
      inactive = { c = { fg = colors.fg, bg = colors.bg } },
    },
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  function()
    return '▎'
  end,
  color = { fg = colors.blue }, -- Sets highlighting of component
  padding = { left = 0}, -- We don't need space before this
}

ins_left {
  -- mode component
  function()
    -- auto change color according to neovims mode
    local mode_color = {
      n = colors.red,
      i = colors.green,
      v = colors.blue,
      [''] = colors.blue,
      V = colors.blue,
      c = colors.magenta,
      no = colors.red,
      s = colors.orange,
      S = colors.orange,
      [''] = colors.orange,
      ic = colors.yellow,
      R = colors.violet,
      Rv = colors.violet,
      cv = colors.red,
      ce = colors.red,
      r = colors.cyan,
      rm = colors.cyan,
      ['r?'] = colors.cyan,
      ['!'] = colors.red,
      t = colors.red,
    }
    vim.api.nvim_command('hi! LualineMode guifg=' .. mode_color[vim.fn.mode()] .. ' guibg=' .. colors.bg)
    return '●'
  end,
  color = 'LualineMode',
  padding = { right = 1 },
}

ins_left {
  -- filesize component
  'filesize',
  cond = conditions.buffer_not_empty,
}

ins_left {
  'filename',
  cond = conditions.buffer_not_empty,
  color = { fg = colors.magenta, gui = 'bold' },
}

ins_left { 'location' }

ins_left { 'progress', color = { fg = colors.fg, gui = 'bold' } }

ins_left {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan },
  },
}

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left {
  function()
    return '%='
  end,
}

ins_left {
  -- Lsp server name .
  function()
    local msg = 'No Active Lsp'
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  icon = ' LSP:',
  color = { fg = '#ffffff', gui = 'bold' },
}

-- Add components to right sections
ins_right {
  'o:encoding', -- option component same as &encoding in viml
  fmt = string.upper, -- I'm not sure why it's upper case either ;)
  cond = conditions.hide_in_width,
  color = { fg = colors.green, gui = 'bold' },
}

ins_right {
  'fileformat',
  fmt = string.upper,
  icons_enabled = false, -- I think icons are cool but Eviline doesn't have them. sigh
  color = { fg = colors.green, gui = 'bold' },
}

ins_right {
  'branch',
  icon = '',
  color = { fg = colors.violet, gui = 'bold' },
}

ins_right {
  'diff',
  -- Is it me or the symbol for modified us really weird
  symbols = { added = ' ', modified = '柳 ', removed = ' ' },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
  cond = conditions.hide_in_width,
}

ins_right {
  function()
    return '▊'
  end,
  color = { fg = colors.blue },
  padding = { left = 1 },
}

-- Now don't forget to initialize lualine
lualine.setup(config) ]]
