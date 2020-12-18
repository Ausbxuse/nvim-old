
"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/

" Always source these
" {{{ always
autocmd Filetype python set tabstop=4
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/mappings.vim
source $HOME/.config/nvim/general/mdsettings.vim
" }}}

  " ordinary neovim
source $HOME/.config/nvim/themes/syntax.vim
source $HOME/.config/nvim/themes/ayu.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/nerd-commenter.vim
source $HOME/.config/nvim/plug-config/rainbow.vim
source $HOME/.config/nvim/plug-config/codi.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/vim-wiki.vim
"source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/goyo.vim
source $HOME/.config/nvim/plug-config/vim-rooter.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/gitgutter.vim
source $HOME/.config/nvim/plug-config/closetags.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/vista.vim
source $HOME/.config/nvim/plug-config/easymotion.vim

" Experimental


if !empty(glob("./paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif

" Python
" https://realpython.com/python-debugging-pdb/ " breakpoint syntax is really cool
" also look into profiling as well
"highlight clear SpellRare 
"highlight clear SpellBad 
"highlight clear SpellCap 
"highlight clear SpellLocal
nnoremap <F7> :setlocal spell! spell?<CR>
autocmd BufRead,BufNewFile *.md let b:sleuth_automatic=0
autocmd BufRead,BufNewFile *.md setlocal nospell
autocmd BufEnter *.md set conceallevel=0
hi Normal guibg=none
"hi NonText guibg=none
