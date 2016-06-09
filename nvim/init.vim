let mapleader = ","

let g:python_host_prog = '/home/jeremy/.pyenv/versions/2.7/envs/neovim2/python'
let g:python_host_prog3 = '/home/jeremy/.pyenv/versions/3.5.1/enns/neovim3/python'


call plug#begin('plugged')
Plug 'https://github.com/tpope/vim-haml.git'
Plug 'https://github.com/chase/Vim-Jinja2-Syntax.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/sjl/gundo.vim.git'
Plug 'https://github.com/SirVer/ultisnips.git'
Plug 'https://github.com/honza/vim-snippets.git'
Plug 'git@github.com:rust-lang/rust.vim.git'
call plug#end()

set wildignore+=*/node_modules/*,*/bower_components/*,*/htmlcov/*,.git

set nowritebackup
set undofile
filetype off

filetype plugin on
filetype indent on

syntax on

set number
set relativenumber
set numberwidth=4
set showmatch
set mat=2

set magic
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set gdefault
set hlsearch
set incsearch
set lazyredraw
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

nnoremap j gj
nnoremap k gk

" remap jj to ESC key for quicker switching back to ctl mode
inoremap jj <ESC>

" strip all whitespace
match ErrorMsg '\s\+$'
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Clear highlighting after search
nnoremap <leader><space> :noh<cr>

" save on focus lost
" au FocusLost * :wa

nnoremap <F5> :GundoToggle<CR>
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|bower_components|node_modules|htmlcov)$'

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

let g:indentLine_enabled = 1
let g:indentLine_char = '|'
let g:indentLine_color_term = 239
let g:indentLine_leadingSpaceEnabled = 1

map <S-Right> :tabn<CR>
map <S-Left> :tabp<CR>

let g:airline_theme='wombat'
set laststatus=2

autocmd Filetype sass setlocal ts=4 sts=4 sw=4
