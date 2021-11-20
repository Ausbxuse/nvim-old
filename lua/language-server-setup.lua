local lspconfig = require 'lspconfig'
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport =
  {properties = {'documentation', 'detail', 'additionalTextEdits'}}

local sumneko_root_path = '/usr/share/sumneko_lua/lua-language-server'
local sumneko_binary = "/usr/bin/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

local on_attach = function(client, bufnr)

  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = {noremap = true, silent = true}

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  -- ─────────────────────────────────────────────────--
  buf_set_keymap('n', '<space>e',
                 '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q',
                 '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '[ls', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>',
                 opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap("n", "<space>f", '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

end

-- lspconfig.eslint.setup {capabilities = capabilities}

lspconfig.pyright.setup {capabilities = capabilities}
lspconfig.html.setup {capabilities = capabilities}
lspconfig.cssls.setup {capabilities = capabilities, on_attach = on_attach}

lspconfig.bashls.setup {capabilities = capabilities}

lspconfig.tsserver.setup {capabilities = capabilities, on_attach = on_attach}

lspconfig.sumneko_lua.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'Lua 5.3',
        -- Setup your lua path
        path = {runtime_path}
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim', 'client', 'mouse', 'tag', 'awesome', 'screen'}
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          -- vim.api.nvim_get_runtime_file("", true),
          ['/usr/share/lua/5.3'] = true,
          ['/usr/share/awesome/lib'] = true
        }
      }
      -- Do not send telemetry data containing a randomized but unique identifier
      -- telemetry = {
      --   enable = false,
      -- },
    }
  }
  -- root_dir = function(fname)
  --         local root_pattern = vim.lsp.util.root_pattern('.git', '*.rockspec')(fname)

  --         if fname == vim.loop.os_homedir() then return nil end
  --         return root_pattern or fname
  -- end,
  -- root_dir = function(fname) return "./" end
}

lspconfig.clangd.setup {capabilities = capabilities, on_attach = on_attach}

-- require'lspconfig'.zeta_note.setup{
--   cmd = {'/home/peter/zeta-note-linux'},
--   root_dir = function(fname)
--     return "./"
--   end
-- }
--
lspconfig.jsonls.setup {
  commands = {
    Format = {
      function()
        vim.lsp.buf.range_formatting({}, {0, 0}, {vim.fn.line("$"), 0})
      end
    }
  }
}
