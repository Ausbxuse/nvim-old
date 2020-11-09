" Keymappings in insert mode
autocmd Filetype markdown normal zR
autocmd Filetype markdown setlocal nospell
autocmd FileType markdown exec 'setlocal nospell'
autocmd Filetype markdown inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap ,s ~~~~<++><Esc>F~hi
autocmd Filetype markdown inoremap ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap ,h ====<Space><++><Esc>F=hi
autocmd Filetype markdown inoremap ,p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,l --------<Enter>
" Keymappings in normal mode
autocmd Filetype markdown nnoremap ,s y$d$i ~~<Esc>pa~~<Esc>0
autocmd Filetype markdown nnoremap \s 0f~xxf~xx0

" Markdown preview settings
autocmd Filetype markdown map <leader>r :MarkdownPreview<CR>

function! s:spell_check_current()
  setlocal spell
  normal z=
  setlocal nospell
endfunction
nnoremap <leader>s :call <SID>spell_check_current()
"highlight clear SpellRare 
"highlight clear SpellBad 
"highlight clear SpellCap 
"highlight clear SpellLocal
nnoremap <F7> :setlocal spell! spell?<CR>
autocmd BufRead,BufNewFile *.md let b:sleuth_automatic=0
autocmd BufRead,BufNewFile *.md setlocal nospell
autocmd BufEnter *.md set conceallevel=0

