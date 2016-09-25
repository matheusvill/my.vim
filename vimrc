" This must be first, because it changes other options as side effect
set nocompatible
set autoindent
set copyindent
set smarttab
set undolevels=1000
set nobackup
set noswapfile
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o,*.so
set is scs magic
set history=10000
set nu
set sm
set showcmd
set showmode
set wildmenu
set wildmode=list:longest,full

"Don't have to save changes on current buffer when opening new buffer
set hidden
"
"Prints searched words
set hlsearch

" Automatically re-read the file if it has changed
set autoread

" Had this problem on one of the dev envs: http://vim.wikia.com/wiki/Backspace_and_delete_problems
set backspace=2 " make backspace work like most other apps

"default indent settings
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

call plug#begin('~/.config/nvim/plugged')

"Clorscheme
Plug 'katcipis/gruvbox'

" plugins
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-markdown'
Plug 'gcmt/wildfire.vim'
Plug 'majutsushi/tagbar'

" Working with invisible stuff :-)
Plug 'ntpeters/vim-better-whitespace'

" Add cool tabs for buffers
Plug 'ap/vim-buftabline'

" Like airline, but smaller
Plug 'itchyny/lightline.vim'

" Autocomplete
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go', { 'do': 'make'}

" JSON
Plug 'elzr/vim-json'

" GoLang
Plug 'fatih/vim-go'

" Hell yeah latex !!!
Plug 'LaTeX-Box-Team/LaTeX-Box'

" Javascript plugins
Plug 'moll/vim-node'
Plug 'jelera/vim-javascript-syntax'
Plug 'vim-scripts/JavaScript-Indent'

" Python plugins
Plug 'davidhalter/jedi-vim'
Plug 'hynek/vim-python-pep8-indent'
Plug 'nvie/vim-flake8'

" Scala stuff, for Gatling
Plug 'derekwyatt/vim-scala'

" Lisp
Plug 'kovisoft/slimv'

call plug#end()

"display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

" Highlight only the lines that go past 80 characters
highlight ColorColumn ctermbg=green guibg=green
call matchadd('ColorColumn', '\%80v', 80)

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

"matchit % magic
syntax on
runtime macros/matchit.vim

"Lets not work with arrows anymore :-)
"Lets use the arrows to work with windows :D
nnoremap <RIGHT> <C-w>l
nnoremap <LEFT> <C-w>h
nnoremap <UP> <C-w>k
nnoremap <DOWN> <C-w>j

"Easy paste from system clipboard
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P

"Easy copy to system clipboard
vnoremap <Leader>y "+y
nnoremap <Leader>y "+y

"Fast buffer navigation
nnoremap <Leader>j :bprevious<CR>
nnoremap <Leader>k :bnext<CR>
nnoremap <Leader>c :bd<CR>

"Opening stuff :D
nnoremap <Leader>t :edit 
nnoremap <Leader>o :vsplit 

"Fast quickfix navigation
map <C-LEFT> :cprev<CR>
map <C-RIGHT> :cnext<CR>

"Disable highlighting for current search only
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

"Indent entire file
nnoremap <Leader>= mmgg=G'mzz

"Substitute word under cursor
nnoremap <Leader>s yiw:%s,<C-r>",

"vimgrep word under cursor
nnoremap <Leader>g yiw:vimgrep /<C-r>"/g **/*.suffix

"Tabularize fun :-)
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>

" Syntastic Settings
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list = 2
let g:syntastic_enable_signs = 1

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Go Syntax Stuff
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_list_type = "quickfix"

" Toggle tagbar
nmap <F8> :TagbarToggle<CR>

"Better spell checking
hi clear SpellBad
hi SpellBad cterm=underline
set spell

"Colorscheme config
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme gruvbox
set background=dark    " Setting dark mode
