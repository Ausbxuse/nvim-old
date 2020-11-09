" auto-install vim-plug
"if empty(glob('~/.config/vim/autoload/plug.vim'))
"    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
"      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   "autocmd VimEnter * PlugInstall
"    autocmd VimEnter * PlugInstall | source $MYVIMRC
"endif
"
call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'connorholyday/vim-snazzy'
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
  Plug 'tpope/vim-speeddating'            " Change dates fast
  Plug 'glts/vim-radical' " Convert binary, hex, etc..
  Plug 'tpope/vim-eunuch' " Files
  Plug 'tpope/vim-repeat' " Repeat stuff
  Plug 'tpope/vim-surround' " Surround
  Plug 'tpope/vim-commentary' " Better Comments
  Plug 'airblade/vim-rooter'
  Plug 'tpope/vim-sleuth'
  Plug 'asvetliakov/vim-easymotion'
  Plug 'unblevable/quick-scope'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'junegunn/rainbow_parentheses.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'ryanoasis/vim-devicons'
  Plug 'jiangmiao/auto-pairs'
  Plug 'alvan/vim-closetag'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'
  Plug 'voldikss/vim-floaterm'
  Plug 'mhinz/vim-startify'
"  Plug 'liuchengxu/vista.vim'
  Plug 'liuchengxu/vim-which-key'
  Plug 'junegunn/goyo.vim'
  Plug 'neomake/neomake'
  Plug 'honza/vim-snippets'
  Plug 'mattn/emmet-vim'
  Plug 'https://github.com/vimwiki/vimwiki.git'
  Plug 'kaicataldo/material.vim'
  "------------------------------------
  " Better Comments
  " Plug 'preservim/nerdcommenter'
  " Plug 'jbgutierrez/vim-better-comments'
  " Echo doc
  " Plug 'Shougo/echodoc.vim'
  " Interactive code
"    Plug 'ChristianChiarulli/codi.vim'
"  Plug 'vim-python/python-syntax'
  " Ranger
  " Plug 'francoiscabrol/ranger.vim'
  " Plug 'rbgrouleff/bclose.vim'
  " ranger
  " Plug 'mhinz/vim-signify'
  " Plug 'justinmk/vim-sneak'
call plug#end()

" Automatically install missing plugins on startup
"autocmd VimEnter *
"  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
"  \|   PlugInstall --sync | q
"  \| endif
