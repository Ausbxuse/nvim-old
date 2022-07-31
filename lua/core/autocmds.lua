vim.cmd([[
" Keymappings in insert mode
autocmd Filetype markdown,rmd setlocal spell
"autocmd Filetype markdown,rmd setlocal filetype=html
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

autocmd Filetype markdown,rmd nnoremap ;s y$d$i ~~<Esc>pa~~<Esc>0
autocmd Filetype markdown,rmd nnoremap \s 0f~xxf~xx0

autocmd BufWritePost *.rmd AsyncRun compile %

autocmd BufWritePre *.lua call LuaFormat()
autocmd TermOpen * setlocal nonumber norelativenumber
" autocmd BufWritePre *.html PrettierAsync
" autocmd BufWritePre *.css PrettierAsync
" autocmd BufWritePre *.scss PrettierAsync
" autocmd BufWritePre *.js PrettierAsync

autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 1000)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 1000)
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
]])
