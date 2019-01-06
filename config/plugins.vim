call plug#begin('~/.nvim/plugged')
    Plug 'zxqfl/tabnine-vim'                " smart language agnostic autocompletion
    Plug 'NLKNguyen/papercolor-theme'       " eye-friendly colorscheme
    Plug 'vim-airline/vim-airline'          " powerline-based status bars
    Plug 'vim-airline/vim-airline-thenes'   " themes for airline
    Plug 'tpope/vim-fugitive'               " git integration
    Plug 'vim-syntastic/syntastic'          " syntax checking
    Plug 'wagnerf42/vim-clippy'             " rust clippy
    Plug 'tpope/vim-surround'               " block wrapping
    Plug 'SirVer/ultisnips'                 " snippet functionality
    Plug 'honza/vim-snippets'               " snippet repository
call plug#end()
