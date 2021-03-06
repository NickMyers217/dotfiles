" Set leader key
let mapleader=" "
nnoremap <Space> <Nop>

" Turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use ctrl+alt+{hjkl} to resize windows
nnoremap <C-M-j> :resize -2<CR>
nnoremap <C-M-k> :resize +2<CR>
nnoremap <C-M-h> :vertical resize -2<CR>
nnoremap <C-M-l> :vertical resize +2<CR>

