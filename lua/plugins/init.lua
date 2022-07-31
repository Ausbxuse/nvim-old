-- For auto install packer when it is absent
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
-- if the path for packer is empty, meaning no plugins are installed, install packer and the plugins
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path
  })
  execute 'packadd packer.nvim'
  require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'lewis6991/impatient.nvim'
    use 'simrat39/symbols-outline.nvim'
    use {'rcarriga/nvim-notify',
      config = function() require("plugins.configs.notify") end
    }
    use 'jbyuki/nabla.nvim'
    use { 'michaelb/sniprun', run = 'bash ./install.sh'}
    use 'rudism/telescope-dict.nvim' -- requires dictd dict-wn dict-moby-thesaurus
    -- use 'f3fora/cmp-spell'
    --[[ use {'jose-elias-alvarez/null-ls.nvim',
      config = function() require("null-ls").setup({
        sources = {
          require("null-ls").builtins.formatting.stylua,
          require("null-ls").builtins.diagnostics.eslint,
          require("null-ls").builtins.completion.spell,
          require("null-ls").builtins.hover.dictionary
        },
      })end} ]]
    --[[ use {
  "vimwiki/vimwiki"

  } ]]
    use {
      "petertriho/nvim-scrollbar",
      config = function() require("scrollbar").setup{} end
    }
    use { "nvim-telescope/telescope-file-browser.nvim"
    }
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
    use {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }
    -- use "Pocco81/TrueZen.nvim"
    use {
      "folke/which-key.nvim",
      config = function()
        require("plugins.configs.which-key")    end
    }
  end)
  execute 'PackerSync'
else
  require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'lewis6991/impatient.nvim'
    use 'simrat39/symbols-outline.nvim'
    use {'rcarriga/nvim-notify',
      config = function() require("plugins.configs.notify") end
    }
    use 'jbyuki/nabla.nvim'
    use { 'michaelb/sniprun', run = 'bash ./install.sh'}
    use 'rudism/telescope-dict.nvim' -- requires dictd dict-wn dict-moby-thesaurus
    -- use 'f3fora/cmp-spell'
    --[[ use {'jose-elias-alvarez/null-ls.nvim',
      config = function() require("null-ls").setup({
        sources = {
          require("null-ls").builtins.formatting.stylua,
          require("null-ls").builtins.diagnostics.eslint,
          require("null-ls").builtins.completion.spell,
          require("null-ls").builtins.hover.dictionary
        },
      })end} ]]
    --[[ use {
  "vimwiki/vimwiki"

  } ]]
    use {
      "petertriho/nvim-scrollbar",
      config = function() require("scrollbar").setup{} end
    }
    use { "nvim-telescope/telescope-file-browser.nvim"
    }
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
      config = function() require("plugins.configs.nvim-tree") end
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
    use {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }
    -- use "Pocco81/TrueZen.nvim"
    use {
      "folke/which-key.nvim",
      config = function()
        require("plugins.configs.which-key")    end
    }

    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
    use {
      'jakewvincent/mkdnflow.nvim',
      config = function()
        require('mkdnflow').setup({
          filetypes = {md = true, rmd = true, markdown = true},
          create_dirs = true,
          perspective = {
            priority = 'first',
            fallback = 'current',
            root_tell = false
          },
          wrap = false,
          bib = {
            default_path = nil,
            find_in_root = true
          },
          silent = false,
          use_mappings_table = true,
          mappings = {
            MkdnNextLink = {'n', '<Tab>'},
            MkdnPrevLink = {'n', '<S-Tab>'},
            MkdnNextHeading = {'n', '<leader>]'},
            MkdnPrevHeading = {'n', '<leader>['},
            MkdnGoBack = {'n', '<BS>'},
            MkdnGoForward = {'n', '<Del>'},
            MkdnFollowLink = {{'n', 'v'}, '<CR>'},
            MkdnDestroyLink = {'n', '<M-CR>'},
            MkdnYankAnchorLink = {'n', 'ya'},
            MkdnYankFileAnchorLink = {'n', 'yfa'},
            MkdnIncreaseHeading = {'n', '+'},
            MkdnDecreaseHeading = {'n', '-'},
            MkdnToggleToDo = {'n', '<C-Space>'},
            MkdnNewListItem = false
          },
          links = {
            style = 'markdown',
            implicit_extension = nil,
            transform_implicit = false,
            transform_explicit = function(text)
              text = text:gsub(" ", "-")
              text = text:lower()
              text = os.date('%Y-%m-%d_')..text
              return(text)
            end
          },
          to_do = {
            symbols = {' ', '-', 'X'},
            update_parents = true,
            not_started = ' ',
            in_progress = '-',
            complete = 'X'
          }
        })
      end,
    }
    use 'ekickx/clipboard-image.nvim'

    -- Lua
    use {
      'abecodes/tabout.nvim',
      config = function()
        require('tabout').setup {
          tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
          backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
          act_as_tab = true, -- shift content if tab out is not possible
          act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
          default_tab = '<C-t>', -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
          default_shift_tab = '<C-d>', -- reverse shift default action,
          enable_backwards = true, -- well ...
          completion = true, -- if the tabkey is used in a completion pum
          tabouts = {
            {open = "'", close = "'"},
            {open = '"', close = '"'},
            {open = '`', close = '`'},
            {open = '(', close = ')'},
            {open = '[', close = ']'},
            {open = '{', close = '}'}
          },
          ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
          exclude = {} -- tabout will ignore these filetypes
        }
      end,
      wants = {'nvim-treesitter'}, -- or require if not used so far
      after = {'nvim-cmp'} -- if a completion plugin is using tabs load it before
    }

    use {
      'jubnzv/mdeval.nvim',
      config = function()
        require 'mdeval'.setup({
          -- Don't ask before executing code blocks
          require_confirmation=false,
          -- Change code blocks evaluation options.
          eval_options = {
            -- Set custom configuration for C++
            cpp = {
              command = {"clang++", "-std=c++20", "-O0"},
              default_header = [[
    #include <iostream>
    #include <vector>
    using namespace std;
      ]]
            },
            -- Add new configuration for Racket
            racket = {
              command = {"racket"},        -- Command to run interpreter
              language_code = "racket",    -- Markdown language code
              exec_type = "interpreted",   -- compiled or interpreted
              extension = "rkt",           -- File extension for temporary files
            },
          },
        })
      end
    }
    -- use {"ellisonleao/glow.nvim", branch = 'main'}
  end)
end

