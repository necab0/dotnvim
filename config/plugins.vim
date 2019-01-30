call plug#begin('~/.nvim/plugged')
    " Plug 'zxqfl/tabnine-vim'                                            " smart language agnostic autocompletion
    Plug 'roxma/nvim-yarp'                                              " required by ncm2
    Plug 'ncm2/ncm2'                                                    " completion support
    Plug 'ncm2/ncm2-bufword'                                            " completion for words in buffers
    Plug 'ncm2/ncm2-path'                                               " completion for file paths
    Plug 'Shougo/echodoc.vim'                                           " show function signatures from completions
    Plug 'NLKNguyen/papercolor-theme'                                   " eye-friendly colorscheme
    " Plug 'vim-airline/vim-airline'                                      " powerline-based status bars
    Plug 'itchyny/lightline.vim'                                        " status bar
    Plug 'tpope/vim-fugitive'                                           " git integration
    " Plug 'vim-syntastic/syntastic'                                      " syntax checking
    Plug 'w0rp/ale'                                                     " linting
    Plug 'maximbaz/lightline-ale'                                       " ale lightline integration
    Plug 'wagnerf42/vim-clippy'                                         " rust clippy
    Plug 'tpope/vim-surround'                                           " block wrapping
    " Plug 'SirVer/ultisnips'                                             " snippet functionality
    " Plug 'honza/vim-snippets'                                           " snippet repository
    " TODO: add snippet support
    Plug 'jiangmiao/auto-pairs'                                         " brackets auto-closing
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }   " fzf binary
    Plug 'junegunn/fzf.vim'                                             " fzf vim utils
    Plug 'tpope/vim-commentary'                                         " bulk commenting
    Plug 'rust-lang/rust.vim'                                           " lots of neat rust features
    Plug 'ludovicchabant/vim-gutentags'                                 " tag file management
    Plug 'scrooloose/nerdtree'                                          " file browsing
    Plug 'majutsushi/tagbar'                                            " tag browsing

    " Language Server Protocol (LSP)
    Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
call plug#end()
