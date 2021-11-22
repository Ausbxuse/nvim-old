-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/peter/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/peter/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/peter/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/peter/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/peter/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    config = { " require('core/luasnip') " },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\1\2\6\0\0\b\0\29\1;4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\2\3\0017\2\4\0023\3\6\0:\3\5\0027\2\3\0017\2\a\0022\3\3\0007\4\b\1%\5\t\0%\6\n\0%\a\v\0>\4\4\2;\4\1\0037\4\b\1%\5\f\0%\6\r\0%\a\14\0>\4\4\0<\4\0\0:\3\5\0027\2\3\0017\2\a\0027\2\15\2%\3\17\0:\3\16\0027\2\3\0017\2\a\0027\2\15\2%\3\19\0:\3\18\0024\2\20\0007\2\21\2%\3\22\0>\2\2\2\16\4\2\0007\3\23\2%\5\24\0>\3\3\2\16\5\2\0007\4\25\2>\4\2\0017\4\3\0017\4\26\4:\3\5\0047\4\3\0017\4\26\0047\4\15\4%\5\27\0:\5\16\0047\4\28\0007\5\15\1>\4\2\1G\0\1\0\nsetup\fComment\vfooter\nclose\a*a\tread\ffortune\npopen\aio\vNumber\16hl_shortcut\rFunction\ahl\topts\f:qa<CR>\19ï™™  Quit NVIM\6q :ene <BAR> startinsert <CR>\18ï…›  New file\6e\vbutton\fbuttons\1\a\0\0006                               __                6  ___     ___    ___   __  __ /\\_\\    ___ ___    6 / _ `\\  / __`\\ / __`\\/\\ \\/\\ \\\\/\\ \\  / __` __`\\  6/\\ \\/\\ \\/\\  __//\\ \\_\\ \\ \\ \\_/ |\\ \\ \\/\\ \\/\\ \\/\\ \\ 6\\ \\_\\ \\_\\ \\____\\ \\____/\\ \\___/  \\ \\_\\ \\_\\ \\_\\ \\_\\6 \\/_/\\/_/\\/____/\\/___/  \\/__/    \\/_/\\/_/\\/_/\\/_/\bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\5€€À™\4\0" },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["asyncrun.vim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/asyncrun.vim",
    url = "https://github.com/skywind3000/asyncrun.vim"
  },
  ["bracey.vim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/bracey.vim",
    url = "https://github.com/turbio/bracey.vim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\1\2/\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\20core/bufferline\frequire\0" },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["codi.vim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/codi.vim",
    url = "https://github.com/metakirby5/codi.vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  kommentary = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/kommentary",
    url = "https://github.com/b3nj5m1n/kommentary"
  },
  ["lspkind-nvim"] = {
    config = { " require('core/lspkind') " },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { ' require("core/statusline") ' },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["nvim-autopairs"] = {
    config = { " require('core/autopairs') " },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { " require('core/cmp') " },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    config = { " require('core/lsp_installer') " },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua",
    url = "https://github.com/akinsho/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["org-bullets.nvim"] = {
    config = { "\27LJ\1\2d\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\fsymbols\1\0\0\1\5\0\0\bâ—‰\bâ—‹\bâ—\bâ—‹\nsetup\16org-bullets\frequire\0" },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/org-bullets.nvim",
    url = "https://github.com/akinsho/org-bullets.nvim"
  },
  ["orgmode.nvim"] = {
    config = { "\27LJ\1\2N\0\0\2\0\4\0\n4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\0014\0\0\0%\1\3\0>\0\2\1G\0\1\0\rcore/org\nsetup\forgmode\frequire\0" },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/orgmode.nvim",
    url = "https://github.com/kristijanhusak/orgmode.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  rnvimr = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/rnvimr",
    url = "https://github.com/kevinhwang91/rnvimr"
  },
  tagbar = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/vim-closetag",
    url = "https://github.com/alvan/vim-closetag"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/vim-easymotion",
    url = "https://github.com/asvetliakov/vim-easymotion"
  },
  ["vim-grammarous"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/vim-grammarous",
    url = "https://github.com/rhysd/vim-grammarous"
  },
  ["vim-lua-format"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/vim-lua-format",
    url = "https://github.com/andrejlevkovitch/vim-lua-format"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/vim-prettier",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/vim-which-key",
    url = "https://github.com/liuchengxu/vim-which-key"
  },
  vimspector = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/vimspector",
    url = "https://github.com/puremourning/vimspector"
  },
  ["zen-mode.nvim"] = {
    config = { "\27LJ\1\2`\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\vwindow\1\0\0\1\0\1\nwidth\4Í™³æ\fÌ™“ÿ\3\nsetup\rzen-mode\frequire\0" },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
 require('core/luasnip') 
time([[Config for LuaSnip]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
 require('core/cmp') 
time([[Config for nvim-cmp]], false)
-- Config for: orgmode.nvim
time([[Config for orgmode.nvim]], true)
try_loadstring("\27LJ\1\2N\0\0\2\0\4\0\n4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\0014\0\0\0%\1\3\0>\0\2\1G\0\1\0\rcore/org\nsetup\forgmode\frequire\0", "config", "orgmode.nvim")
time([[Config for orgmode.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\1\2\6\0\0\b\0\29\1;4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\2\3\0017\2\4\0023\3\6\0:\3\5\0027\2\3\0017\2\a\0022\3\3\0007\4\b\1%\5\t\0%\6\n\0%\a\v\0>\4\4\2;\4\1\0037\4\b\1%\5\f\0%\6\r\0%\a\14\0>\4\4\0<\4\0\0:\3\5\0027\2\3\0017\2\a\0027\2\15\2%\3\17\0:\3\16\0027\2\3\0017\2\a\0027\2\15\2%\3\19\0:\3\18\0024\2\20\0007\2\21\2%\3\22\0>\2\2\2\16\4\2\0007\3\23\2%\5\24\0>\3\3\2\16\5\2\0007\4\25\2>\4\2\0017\4\3\0017\4\26\4:\3\5\0047\4\3\0017\4\26\0047\4\15\4%\5\27\0:\5\16\0047\4\28\0007\5\15\1>\4\2\1G\0\1\0\nsetup\fComment\vfooter\nclose\a*a\tread\ffortune\npopen\aio\vNumber\16hl_shortcut\rFunction\ahl\topts\f:qa<CR>\19ï™™  Quit NVIM\6q :ene <BAR> startinsert <CR>\18ï…›  New file\6e\vbutton\fbuttons\1\a\0\0006                               __                6  ___     ___    ___   __  __ /\\_\\    ___ ___    6 / _ `\\  / __`\\ / __`\\/\\ \\/\\ \\\\/\\ \\  / __` __`\\  6/\\ \\/\\ \\/\\  __//\\ \\_\\ \\ \\ \\_/ |\\ \\ \\/\\ \\/\\ \\/\\ \\ 6\\ \\_\\ \\_\\ \\____\\ \\____/\\ \\___/  \\ \\_\\ \\_\\ \\_\\ \\_\\6 \\/_/\\/_/\\/____/\\/___/  \\/__/    \\/_/\\/_/\\/_/\\/_/\bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\5€€À™\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
 require('core/lspkind') 
time([[Config for lspkind-nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
 require("core/statusline") 
time([[Config for lualine.nvim]], false)
-- Config for: org-bullets.nvim
time([[Config for org-bullets.nvim]], true)
try_loadstring("\27LJ\1\2d\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\fsymbols\1\0\0\1\5\0\0\bâ—‰\bâ—‹\bâ—\bâ—‹\nsetup\16org-bullets\frequire\0", "config", "org-bullets.nvim")
time([[Config for org-bullets.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
 require('core/lsp_installer') 
time([[Config for nvim-lsp-installer]], false)
-- Config for: zen-mode.nvim
time([[Config for zen-mode.nvim]], true)
try_loadstring("\27LJ\1\2`\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\vwindow\1\0\0\1\0\1\nwidth\4Í™³æ\fÌ™“ÿ\3\nsetup\rzen-mode\frequire\0", "config", "zen-mode.nvim")
time([[Config for zen-mode.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
 require('core/autopairs') 
time([[Config for nvim-autopairs]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\1\2/\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\20core/bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
