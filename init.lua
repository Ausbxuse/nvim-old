--     ____      _ __    __
--    /  _/___  (_) /_  / /_  ______ _
--    / // __ \/ / __/ / / / / / __ `/
--  _/ // / / / / /__ / / /_/ / /_/ /
-- /___/_/ /_/_/\__(_)_/\__,_/\__,_/


-- Plugins

local is_bootstrap = false

local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
end

require('plugins').load_plugins(is_bootstrap)

if is_bootstrap then
  print '=================================='
  print '    Plugins are being installed'
  print '    Wait until Packer completes,'
  print '       then restart nvim'
  print '=================================='
  return
end


vim.notify = require("notify")

-- Core settings
require('core.settings').load_options()
require('core.settings').load_autocmds()
require('core.keymappings')
require('core.autocmds')

-- Color Scheme
vim.g.colors_name = 'snappy'
vim.cmd([[colorscheme snappy]])

-- LSP
require('core.language-server-setup')
require'impatient'.enable_profile()



-- vim.opt.termguicolors = true
-- require('plugins')
-- vim.notify("After installation, please restart Nvim 🥰.")
