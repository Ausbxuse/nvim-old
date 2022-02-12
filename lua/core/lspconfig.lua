vim.lsp.handlers["textDocument/publishDiagnostics"] =
  vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    signs = true,
    update_in_insert = true,
    virtual_text = {
      true,
      spacing = 6
      -- severity_limit='Error'  -- Only show virtual text on error
    }
  })

vim.lsp.handlers["textDocument/hover"] =
  vim.lsp.with(vim.lsp.handlers.hover, {border = "rounded"})
vim.lsp.handlers["textDocument/signatureHelp"] =
  vim.lsp.with(vim.lsp.handlers.signature_help, {border = "rounded"})

-- vim.lsp.util.make_floating_popup_options({opts = {border = nil}})

vim.cmd([[
sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticSignError
sign define DiagnosticSignWarning text=  texthl=DiagnosticSignWarning linehl= numhl=DiagnosticSignWarning
sign define DiagnosticSignInformation text= texthl=DiagnosticSignInformation linehl= numhl=DiagnosticSignInformation
sign define DiagnosticSignHint text=  texthl=DiagnosticSignHint linehl= numhl=DiagnosticSignHint
]])
