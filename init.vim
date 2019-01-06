set nocompatible

let s:config_path = $HOME.'/.nvim/config/'
let s:config_files = [
    \'plugins.vim',
    \'base.vim',
    \'nvim.vim',
    \'plugins_conf.vim',
\]

for file in s:config_files
    if filereadable(s:config_path.file)
        exec "source ".s:config_path.file
    endif
endfor
