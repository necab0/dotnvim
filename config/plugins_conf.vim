" tabnine (based on YouCompleteMe)
let g:ycm_autoclose_preview_window_after_insertion = 1

" airline
let g:airline_powerline_fonts = 1
" let g:airline_theme='dark'

" syntastic
let g:syntastic_rust_checkers = ['clippy']

" ultisnips
let g:UltiSnipsExpandTrigger = "<C-j>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"

" fzf
let $FZF_DEFAULT_COMMAND = "rg --files --no-ignore --hidden --follow --glob '!*/.git/*'"
noremap <F4> :FZF<CR>
inoremap <F4> <esc>:w<CR>:FZF<CR>

" rust.vim
let g:rustfmt_autosave = 1

" vim-gutentags
let g:gutentags_ctags_extra_args = ['--fields=+1']  " required by YouCompleteMe

" nerdtree
noremap <F2> :NERDTreeToggle<CR>

" tagbar
let g:tagbar_autofocus = 1
nmap <F5> :TagbarToggle<CR>
