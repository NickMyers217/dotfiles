" Send code to the REPL
" Use gx{text-object} in normal mode
nmap gx <Plug>(neoterm-repl-send)
" Send selected contents in visual mode.
xmap gx <Plug>(neoterm-repl-send)

let g:neoterm_default_mod = ':botright'

let g:neoterm_size = 15

let g:neoterm_autoinsert = 1

