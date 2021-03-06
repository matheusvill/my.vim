set shiftwidth=8
set softtabstop=8
set noexpandtab
set nolist

" Code navigation
nmap <C-UP> gd
nmap <C-DOWN> :GoReferrers<CR>

" Not working very well :-(
nmap <Leader>d <Plug>(go-doc)
nmap <Leader>l :GoMetaLinter<CR>
nmap <Leader>i :GoImplements<CR>
nmap <Leader>r <Plug>(go-rename)
nmap <Leader>b <Plug>(go-test)
nmap <F5> <Plug>(go-coverage)

"vimgrep word under cursor
nnoremap <Leader>g yiw:vimgrep /<C-r>"/g **/*.go

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

let g:go_auto_sameids = 1

let g:go_auto_type_info = 1

let g:go_fmt_command = "goimports"

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

let g:go_list_type = "quickfix"
