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
    format = lspkind.cmp_format({
      with_text = true, -- whether show text alongside icons
      maxwidth = 20, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
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
        Struct = ''
      },

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      before = function(entry, vim_item) return vim_item end
    })

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
  documentation = {border = nil},
  sources = {
    {name = 'orgmode'}, {name = 'nvim_lsp'}, {name = 'nvim_lua'},
    {name = 'neorg'}, {name = 'path'}, {name = 'luasnip'},
    {name = 'buffer', keyword_length = 1}, {name = 'calc'}
  },
  experimental = {
    -- ghost_text = true,
  }

})

-- Require function for tab to work with LUA-SNIP
local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and
           vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col)
             :match("%s") == nil
end
local luasnip = require("luasnip")

cmp.setup({
  mapping = {
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = false
    }),

    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, {"i", "s"}),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {"i", "s"})

  }
})
