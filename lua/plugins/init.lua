local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path
  })
  execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- use 'lewis6991/impatient.nvim'
  use {
    'b3nj5m1n/kommentary',
    config = function() require("plugins.configs.kommentary") end
  }
  -- use {'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end}
  -- use '9mm/vim-closer'
  use 'nvim-treesitter/playground'
  -- use 'alvan/vim-closetag'
  use {'akinsho/nvim-toggleterm.lua',
    config = function() require("plugins.configs.toggleterm") end
  }
  use 'windwp/nvim-ts-autotag'
  -- use 'ray-x/lsp_signature.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    config = function() require("plugins.configs.telescope") end
  }
  use {'lukas-reineke/indent-blankline.nvim',
  config = function() require("plugins.configs.indent_blankline") end}
  use {'neovim/nvim-lspconfig',
  config = function() require("plugins.configs.lspconfig") end}
  --  use 'romgrk/doom-one.vim'
  --  use 'sainnhe/sonokai'
  -- use 'chuling/equinusocio-material.vim' --????
  -- use 'camspiers/animate.vim'
  -- use 'camspiers/lens.vim'
  -- use 'romgrk/barbar.nvim'
  -- use 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
  use 'andrejlevkovitch/vim-lua-format'
  --  use 'sheerun/vim-polyglot'
  -- use 'ryanoasis/vim-devicons'
  --  use 'jiangmiao/auto-pairs'
  use 'preservim/tagbar'
  -- use 'mhinz/vim-startify'
  -- use 'liuchengxu/vista.vim'
  -- use 'liuchengxu/vim-which-key'
  use {
    'norcalli/nvim-colorizer.lua',
    config = function() require("plugins.configs.colorizer") end
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }
  -- use 'hrsh7th/vim-vsnip'
  -- use 'hrsh7th/vim-vsnip-integ'
  -- use 'honza/vim-snippets'
  -- use 'https://github.com/vimwiki/vimwiki.git'
  -- use 'metakirby5/codi.vim'
  -- use 'asvetliakov/vim-easymotion'
  -- use 'glepnir/dashboard-nvim'
  use 'p00f/nvim-ts-rainbow'
  -- use 'nvim-lua/completion-nvim'
  -- use 'turbio/bracey.vim'
  -- use 'mattn/emmet-vim'
  -- use 'patstockwell/vim-monokai-tasty'
  -- use 'puremourning/vimspector'
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
  use {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && yarn install'
    -- cmd = 'MarkdownPreview',
  }
  use {'rhysd/vim-grammarous'}
  -- use {'tzachar/compe-tabnine', run = './install.sh'}
  use {'prettier/vim-prettier', run = 'yarn install'}
  use {'kevinhwang91/rnvimr', run = 'make sync'}
  -- Post-install/update hook with neovim command
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function() require("plugins.configs.treesitter") end,
    run = ':TSUpdate'}
  -- Post-install/update hook with call of vimscript function with argument
  --  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
  -- Use specific branch, dependency and run lua file after load
  -- Use dependency and run lua function after load
  use {
    'lewis6991/gitsigns.nvim',
    config = function() require("plugins.configs.gitsigns") end,
    requires = {'nvim-lua/plenary.nvim'}
  }
  -- use {'skywind3000/asyncrun.vim'}
  use {
    'williamboman/nvim-lsp-installer',
    config = [[ require('plugins/configs/lsp_installer') ]]
  }
  use { -- vscode-like pictograms for neovim lsp completion items Topics
    'onsails/lspkind-nvim',
    config = [[ require('plugins/configs/lspkind') ]]
  }
  use { -- A completion plugin for neovim coded in Lua.
    'hrsh7th/nvim-cmp',
    requires = {
      "hrsh7th/cmp-nvim-lsp", -- nvim-cmp source for neovim builtin LSP client
      "hrsh7th/cmp-nvim-lua", -- nvim-cmp source for nvim lua
      "hrsh7th/cmp-buffer", -- nvim-cmp source for buffer words.
      "hrsh7th/cmp-path", -- nvim-cmp source for filesystem paths.
      "hrsh7th/cmp-calc", -- nvim-cmp source for math calculation.
      "saadparwaiz1/cmp_luasnip" -- luasnip completion source for nvim-cmp
    },
    config = [[ require('plugins/configs/cmp') ]]
  }

  use { -- Snippet Engine for Neovim written in Lua.
    'L3MON4D3/LuaSnip',
    requires = {
      "rafamadriz/friendly-snippets" -- Snippets collection for a set of different programming languages for faster development.
    },
    config = [[ require('plugins/configs/luasnip') ]]
  }

  use { -- A super powerful autopairs for Neovim. It support multiple character.
    'windwp/nvim-autopairs',
    config = [[ require('plugins/configs/autopairs') ]]
  }

  use {
    "folke/zen-mode.nvim",
    config = function()
      require("plugins.configs.zen-mode")
    end
  }
  --[[ use {
    'kristijanhusak/orgmode.nvim',
    config = function()
      require('orgmode').setup {}
      require('core/org')
    end
  } ]]

  use {
    'goolord/alpha-nvim',
    config = function() require('plugins/configs/dashboard').config() end
  }

  use {
    'nvim-lualine/lualine.nvim',
    config = [[ require("plugins/configs/statusline") ]],
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  use {
    'akinsho/bufferline.nvim',
    config = function() require("plugins/configs/bufferline") end,
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use {
    'sindrets/diffview.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function() require("diffview").setup {} end
  }
  --[[ use {
    'glepnir/lspsaga.nvim',
    config = function() require("lspsaga").init_lsp_saga() end
  } ]]
  use {
    'phaazon/hop.nvim',
    branch = 'v1', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup {}
    end
  }

  use {
    "nvim-neorg/neorg",
    config = function()
      require("plugins.configs.neorg")
    end,
    requires = "nvim-lua/plenary.nvim"
  }
  -- use "Pocco81/TrueZen.nvim"
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
      }
    end
  }
end)
