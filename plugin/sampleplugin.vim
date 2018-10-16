let g:plugin_path = expand('<sfile>:p:h')
let g:p = $VIMRUNTIME 

function! PlayMusic()

python << EOF

import vim 

vim.command("let a:plugin_path = expand('<sfile>:p:h')")
plugin_path = vim.eval("a:plugin_path")

import weakref
print(g:p)

EOF
endfunction
