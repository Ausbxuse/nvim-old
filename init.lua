--     ____      _ __    __
--    /  _/___  (_) /_  / /_  ______ _
--    / // __ \/ / __/ / / / / / __ `/
--  _/ // / / / / /__ / / /_/ / /_/ /
-- /___/_/ /_/_/\__(_)_/\__,_/\__,_/

-- Plugins
require('plugins')
-- Settings
require('settings').load_options()
require('settings').load_autocmds()
-- Key Mappings
require('keymappings')
-- Markdown Settings: TODO: put all of the commands in this file
require('autocmds')
-- Plugin Config
-- LSP
require('language-server-setup')

vim.g.colors_name = 'snappy'
require('core')
