--     ____      _ __    __
--    /  _/___  (_) /_  / /_  ______ _
--    / // __ \/ / __/ / / / / / __ `/
--  _/ // / / / / /__ / / /_/ / /_/ /
-- /___/_/ /_/_/\__(_)_/\__,_/\__,_/
-- Plugins
require('plugins')

-- Core settings
require('core.settings').load_options()
require('core.settings').load_autocmds()
require('core.keymappings')
require('core.autocmds')

-- LSP
require('core.language-server-setup')

-- Color Scheme
vim.g.colors_name = 'snappy'
vim.cmd([[colorscheme snappy]])

require'impatient'.enable_profile()
