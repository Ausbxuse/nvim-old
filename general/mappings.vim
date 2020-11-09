let mapleader=" "
nnoremap <Space> <Nop>
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

" Compile and run C++/Python programs
map <leader>r :call Compile()<CR>i
func! Compile()
  exec "w"
  if &filetype == "cpp"
    exec 'te g++ -Wall % && ./a.out'
  elseif &filetype == 'c'
    exec 'te g++ -Wall % && ./a.out'
  elseif &filetype == 'python'
    exec 'te python3 %'
  elseif &filetype == 'java'
    exec 'te javac % && java %<'
"  elseif &filetype == 'vimwiki'
"    exec "MarkdownPreview"
"  else
"    exec "MarkdownPreview"
  endif
endfunc

"autocmd filetype cpp nnoremap <leader>r :w <bar> te g++ -Wall % && ./a.out<CR>i
"autocmd filetype python nnoeemap <silent><leader>r :w <bar> :exec 'te python3' shellescape(@%, 1)<CR>i
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap J 5j
nnoremap K 5k
nmap <silent><Esc> :nohl<CR>
