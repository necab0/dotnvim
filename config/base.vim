set title

set modeline
set modelines=5
set cursorline

set encoding=utf-8
set number
set relativenumber
set expandtab
set tabstop=4
set shiftwidth=4

" search
set ignorecase
set smartcase
set incsearch
set hlsearch

set clipboard=unnamedplus

:highlight Directory guifg=#FF0000 ctermfg=red
:highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
:match ExtraWhitespace /\s\+$/

let mapleader = ","

noremap <silent> <leader>ev :vs $MYVIMRC<CR>
noremap <silent> <leader>sv :source $MYVIMRC<CR>

" remove highlighting of previous search results
nnoremap <silent> <Leader>/ :nohlsearch<CR>

set background=dark
silent! colorscheme PaperColor

set pastetoggle=<F3>
