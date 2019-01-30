" tabnine (based on YouCompleteMe)
" let g:ycm_autoclose_preview_window_after_insertion = 1
"
" -----------------------------------------------------------------------------
"
" ncm2
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new
" line.
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
set shortmess+=c
"
" -----------------------------------------------------------------------------
"
" airline
" let g:airline_powerline_fonts = 1
" let g:airline_theme='dark'
"
" -----------------------------------------------------------------------------
"
" lightline
set laststatus=2
set noshowmode  " disable default mode information

" with lightline-ale
let g:lightline = {
    \   'active': {
    \     'left': [ [ 'mode', 'paste' ],
    \               [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
    \     'right': [ [ 'linter_ok', 'linter_checking', 'linter_errors', 'linter_warnings', 'lineinfo' ], [ 'percent' ], [ 'fileformat', 'fileencoding', 'filetype' ] ],
    \   },
    \   'component_expand': {
    \     'linter_ok': 'lightline#ale#ok',
    \     'linter_checking': 'lightline#ale#checking',
    \     'linter_warnings': 'lightline#ale#warnings',
    \     'linter_errors': 'lightline#ale#errors',
    \   },
    \   'component_function': {
    \     'gitbranch': 'fugitive#head',
    \   },
    \   'component_type': {
    \     'linter_ok': 'left',
    \     'linter_checking': 'left',
    \     'linter_warnings': 'warning',
    \     'linter_errors': 'error',
    \   },
    \ }
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf00d"
let g:lightline#ale#indicator_checking = "\uf110"
"
" -----------------------------------------------------------------------------
"
" syntastic
" let g:syntastic_rust_checkers = ['clippy']
"
" -----------------------------------------------------------------------------
"
" ale
" might wanna replace the errors and warnings with fa icons at some point
let g:ale_rust_cargo_use_clippy = executable('cargo-clippy')
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_sign_error = "\uf00d"
let g:ale_sign_warning = "\uf071"
"
" -----------------------------------------------------------------------------
"
" ultisnips
let g:UltiSnipsExpandTrigger = "<C-j>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
"
" -----------------------------------------------------------------------------
"
" fzf
let $FZF_DEFAULT_COMMAND = "rg --files --no-ignore --hidden --follow --glob '!*/.git/*'"
noremap <F4> :FZF<CR>
inoremap <F4> <esc>:w<CR>:FZF<CR>

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!*/.git/*" --glob "!tags" --color "always" '.shellescape(<q-args>), 1, <bang>0)
"
" -----------------------------------------------------------------------------
"
" rust.vim
let g:rustfmt_autosave = 1
"
" -----------------------------------------------------------------------------
"
" vim-gutentags
" let g:gutentags_ctags_extra_args = ['--fields=+1']  " required by YouCompleteMe
"
" -----------------------------------------------------------------------------
"
" nerdtree
noremap <F2> :NERDTreeToggle<CR>
"
" -----------------------------------------------------------------------------
"
" tagbar
let g:tagbar_autofocus = 1
nmap <F6> :TagbarToggle<CR>
"
" -----------------------------------------------------------------------------
"
" LanguageClient-neovim
set hidden
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rls']
    \ }
let g:LanguageClient_diagnosticsEnable = 0

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
