--     ____      _ __    __
--    /  _/___  (_) /_  / /_  ______ _
--    / // __ \/ / __/ / / / / / __ `/
--  _/ // / / / / /__ / / /_/ / /_/ /
-- /___/_/ /_/_/\__(_)_/\__,_/\__,_/


require'impatient'.enable_profile()

-- Plugins
local is_bootstrap = false

local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
end

require('plugins').load_plugins(is_bootstrap)

if not is_bootstrap then
  vim.notify = require("notify")

  -- Core settings
  require('core.settings').load_options()
  require('core.settings').load_autocmds()
  require('core.keymappings')
  require('core.autocmds')

  -- Color Scheme
  vim.g.colors_name = 'snappy'
  vim.cmd([[colorscheme snappy]])
  -- vim.opt.termguicolors = true

  -- LSP
  require('core.language-server-setup')

  -- Automatically source and re-compile packer whenever you save this init.lua
  local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
  vim.api.nvim_create_autocmd('BufWritePost', {
    command = 'source <afile> | PackerCompile',
    group = packer_group,
    pattern = vim.fn.expand '$MYVIMRC',
  })
else
  print '=================================='
  print '    Plugins are being installed'
  print '    Wait until Packer completes,'
  print '       then restart nvim 🥰'
  print '=================================='
  return
end

