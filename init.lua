--     ____      _ __    __
--    /  _/___  (_) /_  / /_  ______ _
--    / // __ \/ / __/ / / / / / __ `/
--  _/ // / / / / /__ / / /_/ / /_/ /
-- /___/_/ /_/_/\__(_)_/\__,_/\__,_/

-- LSP
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if not (fn.empty(fn.glob(install_path)) > 0) then
  require('core.language-server-setup')
  -- require'impatient'.enable_profile()

  -- Plugins
  require('plugins')
  vim.notify = require("notify")

  -- Core settings
  require('core.settings').load_options()
  require('core.settings').load_autocmds()
  require('core.keymappings')
  require('core.autocmds')

  -- Color Scheme
  vim.g.colors_name = 'snappy'
  vim.cmd([[colorscheme snappy]])
end

-- Plugins
require('plugins')

