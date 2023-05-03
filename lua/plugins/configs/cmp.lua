-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
local cmp = require 'cmp'
local lspkind = require 'lspkind'

cmp.setup({
  completion = {
    -- completeopt = 'menu,menuone,noinsert',
  },

  snippet = {
    expand = function(args) require('luasnip').lsp_expand(args.body) end
  },

  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)

      lspkind.init({
        -- enables text annotations (default: true)
        -- with_text = true,
        mode = 'text_symbol',

        -- enables text annotations (default: 'default')
        -- default symbol map can be either 'default' or 'codicons' for codicon preset (requires vscode-codicons font installed)
        preset = 'codicons',

        -- override preset symbols (default: {})
        symbol_map = {
          Text = '',
          Method = 'ƒ',
          Function = '',
          Constructor = '',
          Variable = '',
          Class = '',
          Interface = 'ﰮ',
          Module = '',
          Property = '',
          Unit = '',
          Value = '',
          Enum = '了',
          Keyword = '',
          Snippet = '﬌',
          Color = '',
          File = '',
          Folder = '',
          EnumMember = '',
          Constant = '',
          Struct = '',
          Default = " ",
          Event = " ",
          Field = "ﰠ ",
          Operator = " ",
          Reference = "",
          TypeParameter = "  ",
        }
      })
      local kind = lspkind.cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
      local strings = vim.split(kind.kind, "%s", { trimempty = true })
      kind.kind = " " .. strings[1] .. " "
      kind.menu = "   " .. (strings[2] == nil and "?" or strings[2]) .. ""

      return kind
    end,

    --[[ format = function(entry, vim_item)
      -- fancy icons and a name of kind
      vim_item.kind = lspkind.presets.default[vim_item.kind]
      vim_item.abbr = string.sub(vim_item.abbr, 1, 10)
      -- set a name for each source
      vim_item.menu = ({
        buffer = "[Buff]",
        nvim_lsp = "[LSP]",
        luasnip = "[LuaSnip]",
        nvim_lua = "[Lua]",
        latex_symbols = "[Latex]"
      })[entry.source.name]
      return vim_item
    end ]]
  },

  window = {
    documentation = { border = nil },
    completion = {
      winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
      col_offset = -3,
      side_padding = 0,
    },
  },

  sources = {
    -- { name = 'dictionary' }, 
    { name = 'spell' },
    { name = 'emoji' },
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
    { name = 'neorg' },
    { name = 'path' },
    { name = 'luasnip' },
    { name = 'buffer', keyword_length = 1 },
    { name = 'calc' }
  },

  experimental = {
    ghost_text = true,
  }

})

-- Require function for tab to work with LUA-SNIP
--[[ local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and
      vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col)
      :match("%s") == nil
end ]]

local luasnip = require("luasnip")

cmp.setup({
  mapping = {
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-y>'] = cmp.mapping.close(),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),

    ['<C-s>'] = cmp.mapping.complete({
      config = {
        sources = {
          { name = 'luasnip' }
        }
      }
    }),

    ["<Down>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<Up>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { "i", "s" }),

    --[[ ['<C-l>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        return cmp.complete_common_string()
      end
      fallback()
    end, { 'i', 'c' }), ]]

    ['<C-l>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    }),

    -- TODO: skip parens and auto multi tab with one tab
    ["<Tab>"] = cmp.mapping(function(fallback)
      if luasnip.expandable() then
        luasnip.expand()
      elseif cmp.visible() then
        cmp.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true
        })
        -- cmp.select_next_item()
      --[[ elseif has_words_before() then
        cmp.complete() ]]
      else
        fallback()
      end
    end, { "i", "s" }),

    -- ["<S-Tab>"] = cmp.mapping(function(fallback)
    ["<C-j>"] = cmp.mapping(function(fallback)
      if luasnip.jumpable(1) then
        luasnip.jump(1)
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<C-k>"] = cmp.mapping(function(fallback)
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" })

  }
})
