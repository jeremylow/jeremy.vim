call plug#begin('/home/jeremy/coding/jeremy.vim/nvim/plugged')

" Auto complete shit
"Plug 'Shougo/deoplete.nvim', {'do': 'UpdateRemotePlugins'}
"Plug 'zchee/deoplete-jedi'
" Or:
Plug 'davidhalter/jedi-vim'


"Plug 'https://github.com/fs111/pydoc.vim'
"Plug 'maralla/completor.vim'
Plug 'tpope/vim-surround'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/sjl/gundo.vim.git', { 'on':  'GundoToggle' }
Plug 'git@github.com:rust-lang/rust.vim.git', { 'for': 'rust' }
Plug 'https://github.com/tpope/vim-haml.git', { 'for': 'sass' }
"Plug 'https://github.com/chase/Vim-Jinja2-Syntax.git', { 'for': ['jina', 'jinja2', 'html'] }
Plug 'git@github.com:Yggdroot/indentLine.git'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/closetag.vim', { 'for': ['html', 'jinja'] }
Plug 'wakatime/vim-wakatime'
Plug 'https://github.com/SirVer/ultisnips.git'

" autocomplete parentheses etc.
" Plug 'Townk/vim-autoclose'

" Airline
Plug 'git@github.com:vim-airline/vim-airline.git'
Plug 'git@github.com:vim-airline/vim-airline-themes.git'

" Clojure shit
"Plug 'guns/vim-clojure-static'
Plug 'kien/rainbow_parentheses.vim'

" Plug 'Valloric/YouCompleteMe'
" Plug 'https://github.com/davidhalter/jedi-vim.git'

call plug#end()
