local lspconfig = require'lspconfig'
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

local sumneko_root_path = '/usr/share/sumneko_lua/lua-language-server'
local sumneko_binary = "/usr/bin/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

local on_attach = function(client, bufnr)
  require'lsp_signature'.on_attach()
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end

lspconfig.pyright.setup{
  capabilities = capabilities
}
lspconfig.html.setup {
  capabilities = capabilities
}
lspconfig.cssls.setup{
  capabilities = capabilities,
  on_attach = on_attach
}

lspconfig.bashls.setup{
  capabilities = capabilities
}

lspconfig.tsserver.setup{
  capabilities = capabilities,
  on_attach = on_attach
}

lspconfig.sumneko_lua.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'Lua 5.3',
        -- Setup your lua path
        path = {
          runtime_path,
        }
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim', 'client', 'mouse', 'tag'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          -- vim.api.nvim_get_runtime_file("", true),
          ['/usr/share/lua/5.3'] = true,
          ['/usr/share/awesome/lib'] = true,
        }
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      -- telemetry = {
      --   enable = false,
      -- },
    },
  },
  -- root_dir = function(fname)
  --         local root_pattern = vim.lsp.util.root_pattern('.git', '*.rockspec')(fname)

  --         if fname == vim.loop.os_homedir() then return nil end
  --         return root_pattern or fname
  -- end,
  root_dir = function(fname)
    return "./"
  end
}

lspconfig.clangd.setup{
  capabilities = capabilities,
  on_attach = on_attach
}

-- require'lspconfig'.zeta_note.setup{
--   cmd = {'/home/peter/zeta-note-linux'},
--   root_dir = function(fname)
--     return "./"
--   end
-- }
