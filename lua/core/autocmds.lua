vim.cmd([[
" Keymappings in insert mode
autocmd Filetype markdown,rmd setlocal spell
"autocmd BufWritePre *.lua call LuaFormat()
autocmd TermOpen * setlocal nonumber norelativenumber
" autocmd BufWritePre *.html PrettierAsync
" autocmd BufWritePre *.css PrettierAsync
" autocmd BufWritePre *.scss PrettierAsync
" autocmd BufWritePre *.js PrettierAsync
autocmd BufWritePre *.js lua vim.lsp.buf.format(nil, 1000)
autocmd BufWritePre *.jsx lua vim.lsp.buf.format(nil, 1000)
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
]])
