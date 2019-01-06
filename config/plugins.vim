call plug#begin('~/.nvim/plugged')
    Plug 'zxqfl/tabnine-vim'                                            " smart language agnostic autocompletion
    Plug 'NLKNguyen/papercolor-theme'                                   " eye-friendly colorscheme
    Plug 'vim-airline/vim-airline'                                      " powerline-based status bars
    Plug 'tpope/vim-fugitive'                                           " git integration
    Plug 'vim-syntastic/syntastic'                                      " syntax checking
    Plug 'wagnerf42/vim-clippy'                                         " rust clippy
    Plug 'tpope/vim-surround'                                           " block wrapping
    Plug 'SirVer/ultisnips'                                             " snippet functionality
    Plug 'honza/vim-snippets'                                           " snippet repository
    Plug 'jiangmiao/auto-pairs'                                         " brackets auto-closing
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }   " fzf binary
    Plug 'tpope/vim-commentary'                                         " bulk commenting
    Plug 'rust-lang/rust.vim'                                           " lots of neat rust features
    Plug 'ludovicchabant/vim-gutentags'                                 " tag file management
    Plug 'scrooloose/nerdtree'                                          " file browsing
    Plug 'majutsushi/tagbar'                                            " tag browsing
call plug#end()
