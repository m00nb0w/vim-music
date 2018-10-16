let g:plugin_path = expand('<sfile>:p:h')
let g:p = $VIMRUNTIME 

function! PlayMusic()

python << EOF

import vim 

vim.command("let a:plugin_path = expand('<sfile>:p:h')")
vim.command("let a:p = $VIMRUNTIME")
plugin_path = vim.eval("a:plugin_path")

import weakref
print(a:p)

EOF
endfunction
