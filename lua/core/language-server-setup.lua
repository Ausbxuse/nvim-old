-- Show line diagnostics automatically in hover window
vim.o.updatetime = 0
vim.cmd [[autocmd CursorHold * lua vim.diagnostic.open_float({border="single", width=40, focusable=false}) ]]

local lspconfig = require 'lspconfig'
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport =
  {properties = {'documentation', 'detail', 'additionalTextEdits'}}

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

local on_attach = function(client, bufnr)
  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
      -- disable virtual text
      virtual_text = false,

      -- show signs
      signs = true,

      -- delay update diagnostics
      update_in_insert = false,
    }
  )



  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover, {border = "single"}
  )

  vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
    vim.lsp.handlers.signature_help, {border = "single"}
  )


  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = {noremap = true, silent = true}
  vim.cmd [[
  augroup Format
  au! * <buffer>
  "au BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 100)
  augroup END
  ]]

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

--[[ lspconfig.efm.setup {
  init_options = {documentFormatting = true},
  settings = {
    rootMarkers = {".git/"},
    languages = {
      lua = {{formatCommand = "lua-format -i", formatStdin = true}},
      javascript = {
        {
          formatCommand = "prettier --stdin-filepath ${INPUT}",
          formatStdin = true
        }, {
          lintCommand = 'eslint_d -f unix --stdin --stdin-filename ${INPUT}',
          lintIgnoreExitCode = true,
          lintStdin = true,
          lintFormats = {'%f:%l:%c: %m'},
          formatCommand = 'eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}',
          formatStdin = true
        }
      },
      javascriptreact = {
        {
          formatCommand = "prettier --stdin-filepath ${INPUT}",
          formatStdin = true
        }, {
          lintCommand = 'eslint_d -f unix --stdin --stdin-filename ${INPUT}',
          lintIgnoreExitCode = true,
          lintStdin = true,
          lintFormats = {'%f:%l:%c: %m'},
          formatCommand = 'eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}',
          formatStdin = true
        }
      }
    }
  }
} ]]

--[[ lspconfig.diagnosticls.setup {
  on_attach = on_attach,
  filetypes = {
    'javascript', 'javascriptreact', 'json', 'typescript', 'typescriptreact',
    'css', 'less', 'scss', 'markdown', 'pandoc'
  },
  init_options = {
    linters = {
      eslint = {
        command = 'eslint_d',
        rootPatterns = {'.git'},
        debounce = 100,
        args = {'--stdin', '--stdin-filename', '%filepath', '--format', 'json'},
        sourceName = 'eslint_d',
        parseJson = {
          errorsRoot = '[0].messages',
          line = 'line',
          column = 'column',
          endLine = 'endLine',
          endColumn = 'endColumn',
          message = '[eslint] ${message} [${ruleId}]',
          security = 'severity'
        },
        securities = {[2] = 'error', [1] = 'warning'}
      }
    },
    filetypes = {
      javascript = 'eslint',
      javascriptreact = 'eslint',
      typescript = 'eslint',
      typescriptreact = 'eslint'
    },
    formatters = {
      eslint_d = {
        command = 'eslint_d',
        rootPatterns = {'.git'},
        args = {'--stdin', '--stdin-filename', '%filename', '--fix-to-stdout'}
      },
      prettier = {
        command = 'prettier_d_slim',
        rootPatterns = {'.git'},
        -- requiredFiles: { 'prettier.config.js' },
        args = {'--stdin', '--stdin-filepath', '%filename'}
      }
    },
    formatFiletypes = {
      css = 'prettier',
      javascript = 'prettier',
      javascriptreact = 'prettier',
      json = 'prettier',
      scss = 'prettier',
      less = 'prettier',
      typescript = 'prettier',
      typescriptreact = 'prettier',
      markdown = 'prettier'
    }
  }
} ]]

-- lspconfig.eslint.setup {capabilities = capabilities}

lspconfig.pyright.setup {capabilities = capabilities}
lspconfig.html.setup {capabilities = capabilities}
lspconfig.cssls.setup {capabilities = capabilities, on_attach = on_attach}

lspconfig.bashls.setup {capabilities = capabilities}

lspconfig.tsserver.setup {capabilities = capabilities, on_attach = on_attach}
--[[ lspconfig.jdtls.setup {
  capabilities = capabilities,
  on_attach = on_attach,

  root_dir = function() return vim.fn.getcwd()
  end
} ]]

lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  -- cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
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
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false
      }
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

lspconfig.jsonls.setup {
  commands = {
    Format = {
      function()
        vim.lsp.buf.range_formatting({}, {0, 0}, {vim.fn.line("$"), 0})
      end
    }
  }
}
lspconfig.texlab.setup{}
lspconfig.kotlin_language_server.setup{}

require('lspconfig.ui.windows').default_options.border = 'single'

vim.cmd([[
sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticSignError
sign define DiagnosticSignWarning text=  texthl=DiagnosticSignWarning linehl= numhl=DiagnosticSignWarning
sign define DiagnosticSignInformation text= texthl=DiagnosticSignInformation linehl= numhl=DiagnosticSignInformation
sign define DiagnosticSignHint text=  texthl=DiagnosticSignHint linehl= numhl=DiagnosticSignHint
]])
