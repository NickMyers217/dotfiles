" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" Toggle the term
nmap <leader>' :Ttoggle<CR>

" Send code to the REPL
nmap <leader>e :TREPLSendLine<CR>
vmap <leader>e :TREPLSendSelection<CR>

let g:neoterm_default_mod = ':botright'

let g:neoterm_size = 15

let g:neoterm_autoinsert = 1
