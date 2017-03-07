let g:python_host_prog = '/home/jeremy/.pyenv/versions/2.7/envs/neovim2/bin/python'
let g:python3_host_prog = '/home/jeremy/.pyenv/versions/3.5.1/envs/neovim3/bin/python'
let g:plug_threads = 32

filetype plugin on
filetype indent on

let mapleader = ","
set mouse-=a
set wildignore+=*/node_modules/*,*/bower_components/*,*/htmlcov/*,.git

set nowritebackup
set undofile

syntax on

set number
set relativenumber
set numberwidth=4

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

" Stops vim from inserting line breaks to wrap text
set textwidth=0
set wrapmargin=0

source $HOME/coding/jeremy.vim/nvim/plug.vim

nnoremap j gj
nnoremap k gk

" remap jj to ESC key for quicker switching back to ctl mode
inoremap jj <ESC>

" strip all whitespace
match ErrorMsg '\s\+$'
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Clear highlighting after search
nnoremap <leader><space> :noh<cr>

" Faster saving, just use leader + w
nnoremap <leader>w :w!<cr>

" save on focus lost (this doesn't work)
" au FocusLost * :wa
let g:NERDDefaultAlign = 'left'

nnoremap <F5> :GundoToggle<CR>

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|bower_components|node_modules|htmlcov)$'

" Don't allow use of arrow keys outside of insert mode.
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

let g:indentLine_enabled = 1
let g:indentLine_char = '┆'
let g:indentLine_color_term = 239
let g:indentLine_leadingSpaceEnabled = 0

highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

map <S-Right> :tabn<CR>
map <S-Left> :tabp<CR>

set laststatus=2

autocmd Filetype sass setlocal ts=4 sts=4 sw=4

let g:airline_theme='serene'

" I like my Sass four spaces. Fight me.
autocmd Filetype sass setlocal ts=4 sts=4 sw=4

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set runtimepath+=~/coding/jeremy.vim/
