let mapleader=" "
tnoremap <Esc> <C-\><C-n>
nnoremap <Space> <Nop>
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>a
" Better window navigation
nnoremap <S-h> <C-w>h
nnoremap <S-j> <C-w>j
nnoremap <S-k> <C-w>k
nnoremap <S-l> <C-w>l
" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
nnoremap j gj
nnoremap k gk

" Compile and run C++/Python programs
map <leader>r :call Compile()<CR>

func! Compile()
  exec "w"
  if &filetype == "cpp"
    exec 'vs | vert res -10 | te g++ -Wall % && ./a.out'
  elseif &filetype == 'c'
    exec 'vs | vert res -10 | te gcc -Wall % && ./a.out'
  elseif &filetype == 'python'
    exec 'vs | vert res -10 | te python3 %'
  elseif &filetype == 'rust'
    exec 'vs | vert res -10 | te cargo run'
  elseif &filetype == 'lua'
    exec 'vs | vert res -10 | te lua %'
  elseif &filetype == 'shell'
    exec 'vs | vert res -10 | te ./%'
  elseif &filetype == 'java'
    exec 'vs | vert res -10 | te javac % && java %<'
  elseif &filetype == 'html'
    exec 'Bracey'
"  elseif &filetype == 'vimwiki'
"    exec "MarkdownPreview"
"  else
"    exec "MarkdownPreview"
  endif
endfunc

"autocmd filetype cpp nnoremap <leader>r :w <bar> te g++ -Wall % && ./a.out<CR>i
"autocmd filetype python nnoeemap <silent><leader>r :w <bar> :exec 'te python3' shellescape(@%, 1)<CR>i
nnoremap <C-n> :NERDTreeToggle<CR>
" autocmd VimEnter * NERDTree | wincmd p
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
"autocmd VimEnter *.html silent !browser-sync start --server --files *.html css/*.css js/*.js &
autocmd VimEnter *.html silent !live-server &
"autocmd VimLeave *.html,*.css silent !killwebsync
autocmd VimLeave *.html,*.css silent !killall node &
nmap <silent><Esc> :nohl<CR>
nnoremap <F7> :setlocal spell! spell?<CR>
nnoremap <leader>n :r! date<CR>i*<Esc>$a*<CR><Esc>
