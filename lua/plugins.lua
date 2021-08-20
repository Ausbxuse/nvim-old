-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'b3nj5m1n/kommentary'
  use {'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end}

  -- Simple plugins can be specified as strings
  -- use '9mm/vim-closer'
  use 'nvim-treesitter/playground'
  use 'alvan/vim-closetag'
  use 'akinsho/nvim-toggleterm.lua'
  use 'ray-x/lsp_signature.nvim'

  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  --  use 'romgrk/doom-one.vim'
  --  use 'sainnhe/sonokai'
  -- use 'chuling/equinusocio-material.vim' --????
  -- use 'camspiers/animate.vim'
  -- use 'camspiers/lens.vim'
  -- use 'godlygeek/tabular'
  use 'romgrk/barbar.nvim'
  -- use 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
  -- use 'plasticboy/vim-markdown'
  use 'andrejlevkovitch/vim-lua-format'
  use 'norcalli/nvim-colorizer.lua'
  --  use 'sheerun/vim-polyglot'
  use 'ryanoasis/vim-devicons'
  --  use 'jiangmiao/auto-pairs'
  use 'windwp/nvim-autopairs'
  use 'preservim/tagbar'
  use 'mhinz/vim-startify'
  -- use 'liuchengxu/vista.vim'
  use 'liuchengxu/vim-which-key'
  use 'kyazdani42/nvim-tree.lua'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'honza/vim-snippets'
  -- use 'https://github.com/vimwiki/vimwiki.git'
  use 'metakirby5/codi.vim'
  use 'asvetliakov/vim-easymotion'
  -- use 'glepnir/dashboard-nvim'
  use 'rafamadriz/friendly-snippets'
  -- use 'p00f/nvim-ts-rainbow'
  -- use 'nvim-lua/completion-nvim'
  use 'turbio/bracey.vim'
  use 'mattn/emmet-vim'
  -- use 'patstockwell/vim-monokai-tasty'
  use 'puremourning/vimspector'

  -- Lazy loading:
  -- Load on specific commands
  -- use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- Load on an autocommand event
  --  use {'andymass/vim-matchup', event = 'VimEnter'}

  -- Load on a combination of conditions: specific filetypes or commands
  -- Also run code after load (see the "config" key)
  -- use {
  --  'w0rp/ale',
  --  ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
  --  cmd = 'ALEEnable',
  --  config = 'vim.cmd[[ALEEnable]]'
  -- }

  -- Plugins can have dependencies on other plugins
  --  use {
  --    'haorenW1025/completion-nvim',
  --    opt = true,
  --    requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
  --  }

  -- Plugins can also depend on rocks from luarocks.org:
  --  use {
  --    'my/supercoolplugin',
  --    rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
  --  }

  -- You can specify rocks in isolation
  --  use_rocks 'penlight'
  --  use_rocks {'lua-resty-http', 'lpeg'}

  -- Local plugins can be included
  -- use '~/projects/personal/hover.nvim'

  -- Plugins can have post-install/update hooks
  use {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && yarn install'
    -- cmd = 'MarkdownPreview',
  }
  use {'rhysd/vim-grammarous'}
  use {'tzachar/compe-tabnine', run = './install.sh'}
  use {'prettier/vim-prettier', run = 'yarn install'}
  use {'kevinhwang91/rnvimr', run = 'make sync'}

  -- Post-install/update hook with neovim command
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- Post-install/update hook with call of vimscript function with argument
  --  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

  -- Use specific branch, dependency and run lua file after load
  use {
    'glepnir/galaxyline.nvim',
    config = function() require("core.statusline") end,
    branch = 'main',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- Use dependency and run lua function after load
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}

  -- You can specify multiple plugins in a single call
  --  use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}

end)
