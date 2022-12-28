-- For auto install packer when it is absent
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
-- if the path for packer is empty, meaning no plugins are installed, install packer and the plugins
local is_bootstrap = false
local function setupPackage()
  require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'lewis6991/impatient.nvim'
    use 'simrat39/symbols-outline.nvim'
    use { 'rcarriga/nvim-notify',
      config = function() require("plugins.configs.notify") end
    }
    use 'jbyuki/nabla.nvim'
    use { 'michaelb/sniprun', run = 'bash ./install.sh' }
    use {
      'nvim-treesitter/nvim-treesitter',
      config = function() require("plugins.configs.treesitter") end,
      -- run = ':TSUpdate'
    }
    --[[ use {
      'uga-rosa/cmp-dictionary',
      config = function()
        require("cmp_dictionary").setup({
          dic = {
            -- If you always use the English dictionary, The following settings are suitable:
            ["*"] = "~/.config/nvim/en.dict",
          },
          async = true,
          -- max_items = 5,
        })
      end
    } ]]
    -- use 'f3fora/cmp-spell'
    use {
      "petertriho/nvim-scrollbar",
      config = function() require("scrollbar").setup {} end
    }
    use { "nvim-telescope/telescope-file-browser.nvim"
    }
    use {
      'b3nj5m1n/kommentary',
      config = function() require("plugins.configs.kommentary") end
    }
    use 'nvim-treesitter/playground'
    use { 'akinsho/nvim-toggleterm.lua',
      config = function() require("plugins.configs.toggleterm") end
    }
    use { 'windwp/nvim-ts-autotag',
      requires = { 'nvim-treesitter/nvim-treesitter' }
    }
    -- use 'ray-x/lsp_signature.nvim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use {
      'nvim-telescope/telescope.nvim',
      config = function() require("plugins.configs.telescope") end
    }
    use { 'lukas-reineke/indent-blankline.nvim',
      config = function() require("plugins.configs.indent_blankline") end }
    use { 'neovim/nvim-lspconfig',
      config = function() require("plugins.configs.lspconfig") end }
    -- use 'camspiers/animate.vim'
    -- use 'camspiers/lens.vim'
    -- use 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
    use 'andrejlevkovitch/vim-lua-format'
    use 'preservim/tagbar'
    use {
      'norcalli/nvim-colorizer.lua',
      config = function() require("plugins.configs.colorizer") end
    }
    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() require("plugins.configs.nvim-tree") end
    }
    use { 'p00f/nvim-ts-rainbow',
      requires = { 'nvim-treesitter/nvim-treesitter' }
    }
    use { 'rhysd/vim-grammarous' }
    use { 'prettier/vim-prettier', run = 'yarn install' }
    use {
      'lewis6991/gitsigns.nvim',
      config = function() require("plugins.configs.gitsigns") end,
      requires = { 'nvim-lua/plenary.nvim' }
    }
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
      --[[ requires = {
        "rafamadriz/friendly-snippets" -- Snippets collection for a set of different programming languages for faster development.
      }, ]]
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
    use {
      'goolord/alpha-nvim',
      config = function() require('plugins/configs/dashboard').config() end
    }

    use {
      'nvim-lualine/lualine.nvim',
      config = [[ require("plugins/configs/statusline") ]],
      requires = { 'kyazdani42/nvim-web-devicons' }
    }

    use {
      'akinsho/bufferline.nvim',
      config = function() require("plugins/configs/bufferline") end,
      requires = { 'kyazdani42/nvim-web-devicons' }
    }
    use {
      'sindrets/diffview.nvim',
      requires = 'nvim-lua/plenary.nvim',
      config = function() require("diffview").setup {} end
    }
    use {
      'phaazon/hop.nvim',
      branch = 'v1', -- optional but strongly recommended
      config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        require 'hop'.setup {}
      end
    }

    --[[ use {
      "nvim-neorg/neorg",
      config = function()
        require("plugins.configs.neorg")
      end,
      requires = "nvim-lua/plenary.nvim"
    } ]]

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
    use {
      "folke/which-key.nvim",
      config = function()
        require("plugins.configs.which-key")
      end
    }

    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install",
      setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
    use 'ekickx/clipboard-image.nvim'
    use 'Vonr/align.nvim'
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
            { open = "'", close = "'" },
            { open = '"', close = '"' },
            { open = '`', close = '`' },
            { open = '(', close = ')' },
            { open = '[', close = ']' },
            { open = '{', close = '}' }
          },
          ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
          exclude = {} -- tabout will ignore these filetypes
        }
      end,
      wants = { 'nvim-treesitter' }, -- or require if not used so far
      after = { 'nvim-cmp' } -- if a completion plugin is using tabs load it before
    }

    use {
      'jubnzv/mdeval.nvim',
      config = function()
        require 'mdeval'.setup({
          -- Don't ask before executing code blocks
          require_confirmation = false,
          -- Change code blocks evaluation options.
          eval_options = {
            -- Set custom configuration for C++
            cpp = {
              command = { "clang++", "-std=c++20", "-O0" },
              default_header = [[
    #include <iostream>
    #include <vector>
    using namespace std;
      ]]
            },
            -- Add new configuration for Racket
            racket = {
              command = { "racket" }, -- Command to run interpreter
              language_code = "racket", -- Markdown language code
              exec_type = "interpreted", -- compiled or interpreted
              extension = "rkt", -- File extension for temporary files
            },
          },
        })
      end
    }
    use {
      'martineausimon/nvim-lilypond-suite',
      requires = { 'MunifTanjim/nui.nvim' }
    }
    -- use {"ellisonleao/glow.nvim", branch = 'main'}
    use { 'lervag/vimtex' }
    use { "honza/vim-snippets" }
    use { "kdheepak/cmp-latex-symbols" }
    use { "hrsh7th/cmp-emoji" }

    use "rafamadriz/friendly-snippets"
    use 'zane-/cder.nvim'
    use {
      "ausbxuse/luasnip-latex-snippets.nvim",
      -- replace "lervag/vimtex" with "nvim-treesitter/nvim-treesitter" if you're
      -- using treesitter.
      requires = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
      config = function()
        require 'luasnip-latex-snippets'.setup()
        -- or setup({ use_treesitter = true })
      end,
      ft = "tex",
    }

    use { "williamboman/mason.nvim",
      config = function()
        require("mason").setup()
      end
    }
    use {"williamboman/mason-lspconfig.nvim",
      config = function()
        require("mason-lspconfig").setup()
      end
    }

    if is_bootstrap then
      require('packer').sync()
    end
  end)
end

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path
  })
  execute 'packadd packer.nvim'
  setupPackage()
  -- execute 'PackerSync'
else
  setupPackage()
end

if is_bootstrap then
  print '=================================='
  print '    Plugins are being installed'
  print '    Wait until Packer completes,'
  print '       then restart nvim'
  print '=================================='
  return
end
