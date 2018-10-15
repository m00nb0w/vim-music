let g:plugin_path = expand('<sfile>:p:h')

function! PlayMusic()

python << EOF

import vim 

vim.command("let a:plugin_path = expand('<sfile>:p:h')")
plugin_path = vim.eval("a:plugin_path")
print plugin_path

EOF
endfunction
