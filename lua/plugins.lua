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
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- use 'lewis6991/impatient.nvim'
  use 'b3nj5m1n/kommentary'
  -- use {'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end}

  -- Simple plugins can be specified as strings
  -- use '9mm/vim-closer'
  use 'nvim-treesitter/playground'
  -- use 'alvan/vim-closetag'
  use 'akinsho/nvim-toggleterm.lua'

  use 'windwp/nvim-ts-autotag'
  -- use 'ray-x/lsp_signature.nvim'

  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'neovim/nvim-lspconfig'
  -- use 'hrsh7th/nvim-compe' -- not anymore?
  --  use 'romgrk/doom-one.vim'
  --  use 'sainnhe/sonokai'
  -- use 'chuling/equinusocio-material.vim' --????
  -- use 'camspiers/animate.vim'
  -- use 'camspiers/lens.vim'
  -- use 'romgrk/barbar.nvim'
  -- use 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
  use 'andrejlevkovitch/vim-lua-format'
  use 'norcalli/nvim-colorizer.lua'
  --  use 'sheerun/vim-polyglot'
  -- use 'ryanoasis/vim-devicons'
  --  use 'jiangmiao/auto-pairs'
  use 'preservim/tagbar'
  -- use 'mhinz/vim-startify'
  -- use 'liuchengxu/vista.vim'
  -- use 'liuchengxu/vim-which-key'
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
  -- use {'tzachar/compe-tabnine', run = './install.sh'}
  use {'prettier/vim-prettier', run = 'yarn install'}
  -- use {'kevinhwang91/rnvimr', run = 'make sync'}

  -- Post-install/update hook with neovim command
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- Post-install/update hook with call of vimscript function with argument
  --  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

  -- Use specific branch, dependency and run lua file after load
  --[[ use {
    'glepnir/galaxyline.nvim',
    config = function() require("core.statusline") end,
    branch = 'main',
    requires = {'kyazdani42/nvim-web-devicons'}
  } ]]

  -- Use dependency and run lua function after load
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}

  -- You can specify multiple plugins in a single call
  --  use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}
  -- use {'skywind3000/asyncrun.vim'}

  use {
    'williamboman/nvim-lsp-installer',
    config = [[ require('core/lsp_installer') ]]
  }
  use { -- vscode-like pictograms for neovim lsp completion items Topics
    'onsails/lspkind-nvim',
    config = [[ require('core/lspkind') ]]
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
    config = [[ require('core/cmp') ]]
  }

  use { -- Snippet Engine for Neovim written in Lua.
    'L3MON4D3/LuaSnip',
    requires = {
      "rafamadriz/friendly-snippets" -- Snippets collection for a set of different programming languages for faster development.
    },
    config = [[ require('core/luasnip') ]]
  }

  use { -- A super powerful autopairs for Neovim. It support multiple character.
    'windwp/nvim-autopairs',
    config = [[ require('core/autopairs') ]]
  }

  use {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {
        window = {
          backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
          -- height and width can be:
          -- * an absolute number of cells when > 1
          -- * a percentage of the width / height of the editor when <= 1
          -- * a function that returns the width or the height
          width = 120, -- width of the Zen window
          height = 1, -- height of the Zen window
          -- by default, no options are changed for the Zen window
          -- uncomment any of the options below, or add other vim.wo options you want to apply
          options = {
            signcolumn = "no", -- disable signcolumn
            number = false, -- disable number column
            relativenumber = false, -- disable relative numbers
            cursorline = false, -- disable cursorline
            cursorcolumn = false, -- disable cursor column
            foldcolumn = "0", -- disable fold column
            list = false, -- disable whitespace characters
          },
        }

      }
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
    config = function() require('core/dashboard').config() end
  }

  use {
    'nvim-lualine/lualine.nvim',
    config = [[ require("core/statusline") ]],
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  use {
    'akinsho/bufferline.nvim',
    config = function() require("core/bufferline") end,
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
      require('neorg').setup {
        -- Tell Neorg what modules to load
        load = {
          ["core.defaults"] = {},
          ["core.presenter"] = {
            config = {
              zen_mode = "zen-mode",
            }

          },
          ["core.norg.qol.toc"] = {},
          ["core.norg.manoeuvre"] = {},
          ["core.keybinds"] = {},
          ["core.gtd.ui"] = {},
          ["core.gtd.helpers"] = {},
          ["core.neorgcmd"] = {},
          ["core.gtd.queries"] = {},
          ["core.norg.completion"] = {
            config = {
              engine = "nvim-cmp" -- We current support nvim-compe and nvim-cmp only
            }
          },
          ["core.norg.concealer"] = {
            config = {
              icons = {
                heading = {
                  enabled = true,

                  level_1 = {
                    enabled = true,
                    icon = "◉",
                    highlight = "NeorgHeadingBullet1",
                    query = "[ (heading1_prefix) (link_target_heading1) ] @icon",
                  },

                  level_2 = {
                    enabled = true,
                    icon = " ○",
                    highlight = "NeorgHeadingBullet2",
                    query = "[ (heading2_prefix) (link_target_heading2) ] @icon",
                  },

                  level_3 = {
                    enabled = true,
                    icon = "  ●",
                    highlight = "NeorgHeadingBullet3",
                    query = "[ (heading3_prefix) (link_target_heading3) ] @icon",
                  },

                  level_4 = {
                    enabled = true,
                    icon = "   ○",
                    highlight = "NeorgHeadingBullet4",
                    query = "[ (heading4_prefix) (link_target_heading4) ] @icon",
                  },

                  level_5 = {
                    enabled = true,
                    icon = "    ●",
                    highlight = "NeorgHeadingBullet5",
                    query = "[ (heading5_prefix) (link_target_heading5) ] @icon",
                  },

                  level_6 = {
                    enabled = true,
                    icon = "     ○",
                    highlight = "NeorgHeadingBullet6",
                    query = "[ (heading6_prefix) (link_target_heading6) ] @icon",
                    render = function(self, text)
                      return {
                      {
                          string.rep(" ", text:len() - string.len("******") - string.len(" ")) .. self.icon,
                          self.highlight,
                        },
                      }
                    end,
                  },
                }

              }
            }
          }, -- Allows for use of icons
          ["core.norg.dirman"] = { -- Manage your directories with Neorg
            config = {
              workspaces = {
                my_workspace = "~/Documents/neorg",
              }
            }
          },
          ["core.gtd.base"] = {
            config = {
              workspace = "my_workspace",
            }
          }, -- Load all the default modules
        }
      }
    end,
    requires = "nvim-lua/plenary.nvim"
  }
  -- use "Pocco81/TrueZen.nvim"
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

end)
