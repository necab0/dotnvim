call plug#begin('~/.nvim/plugged')
    Plug 'Shougo/echodoc.vim'                                           " show function signatures from completions
    Plug 'NLKNguyen/papercolor-theme'                                   " eye-friendly colorscheme
    Plug 'itchyny/lightline.vim'                                        " status bar
    Plug 'tpope/vim-fugitive'                                           " git integration
    " Plug 'vim-syntastic/syntastic'                                      " syntax checking
    Plug 'w0rp/ale'                                                     " linting
    Plug 'maximbaz/lightline-ale'                                       " ale lightline integration
    Plug 'tpope/vim-surround'                                           " block wrapping
    Plug 'Shougo/neosnippet.vim'                                        " snippet functionality
    Plug 'honza/vim-snippets'                                           " snippet repository
    Plug 'jiangmiao/auto-pairs'                                         " brackets auto-closing
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }   " fzf binary
    Plug 'junegunn/fzf.vim'                                             " fzf vim utils
    Plug 'tpope/vim-commentary'                                         " bulk commenting
    Plug 'rust-lang/rust.vim'                                           " lots of neat rust features
    Plug 'ludovicchabant/vim-gutentags'                                 " tag file management
    Plug 'scrooloose/nerdtree'                                          " file browsing
    Plug 'majutsushi/tagbar'                                            " tag browsing
    Plug 'aurieh/discord.nvim'                                          " discord rich presence

    " Language Server Protocol (LSP)
    Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
    Plug 'ncm2/ncm2'                                                    " completion support
    Plug 'roxma/nvim-yarp'
    Plug 'ncm2/ncm2-bufword'
    Plug 'ncm2/ncm2-path'
    Plug 'ncm2/float-preview.nvim'                                      " floating window support
call plug#end()
