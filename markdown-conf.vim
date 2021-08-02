" Keymappings in insert mode
autocmd Filetype markdown,rmd normal zR
autocmd Filetype markdown,rmd setlocal nospell
autocmd FileType markdown,rmd exec 'setlocal nospell'
autocmd Filetype markdown,rmd inoremap ;f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown,rmd inoremap ;n ---<Enter><Enter>
autocmd Filetype markdown,rmd inoremap ;b **** <++><Esc>F*hi
autocmd Filetype markdown,rmd inoremap ;s ~~~~<++><Esc>F~hi
autocmd Filetype markdown,rmd inoremap ;i ** <++><Esc>F*i
autocmd Filetype markdown,rmd inoremap ;d `` <++><Esc>F`i
autocmd Filetype markdown,rmd inoremap ;c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown,rmd inoremap ;h ====<Space><++><Esc>F=hi
autocmd Filetype markdown,rmd inoremap ;p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown,rmd inoremap ;a [](<++>) <++><Esc>F[a
autocmd Filetype markdown,rmd inoremap ;1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown,rmd inoremap ;2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown,rmd inoremap ;3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown,rmd inoremap ;4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown,rmd inoremap ;j \|--------
" Keymappings in normal mode
autocmd Filetype markdown,rmd nnoremap ;s y$d$i ~~<Esc>pa~~<Esc>0
autocmd Filetype markdown,rmd nnoremap \s 0f~xxf~xx0

" Markdown preview settings
autocmd Filetype markdown map <leader>r :MarkdownPreview<CR>

function! s:spell_check_current()
  setlocal spell
  normal z=
  setlocal nospell
endfunction
nnoremap <leader>s :call <SID>spell_check_current()<CR>
"highlight clear SpellRare 
"highlight clear SpellBad 
"highlight clear SpellCap 
"highlight clear SpellLocal
nnoremap <F7> :setlocal spell! spell?<CR>
autocmd BufRead,BufNewFile *.md let b:sleuth_automatic=0
autocmd BufRead,BufNewFile *.md setlocal nospell
autocmd BufEnter *.md set conceallevel=0
