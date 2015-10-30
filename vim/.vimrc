"           ██
"          ░░
"  ██    ██ ██ ██████████  ██████  █████
" ░██   ░██░██░░██░░██░░██░░██░░█ ██░░░██
" ░░██ ░██ ░██ ░██ ░██ ░██ ░██ ░ ░██  ░░
"  ░░████  ░██ ░██ ░██ ░██ ░██   ░██   ██
"   ░░██   ░██ ███ ░██ ░██░███   ░░█████
"    ░░    ░░ ░░░  ░░  ░░ ░░░     ░░░░░
"
"  ▓▓▓▓▓▓▓▓▓▓
" ░▓ author ▓ MickNyers
" ░▓ code   ▓ 
" ░▓ mirror ▓ 
" ░▓▓▓▓▓▓▓▓▓▓
" ░░░░░░░░░░
"
"
" ┏━┓╻  ╻ ╻┏━╸╻┏┓╻   ┏━┓╺┳╸╻ ╻┏━╸┏━╸
" ┣━┛┃  ┃ ┃┃╺┓┃┃┗┫   ┗━┓ ┃ ┃ ┃┣╸ ┣╸ 
" ╹  ┗━╸┗━┛┗━┛╹╹ ╹   ┗━┛ ╹ ┗━┛╹  ╹  
" to install from the shell run:
" git clone https://github.com/gmarik/Vundle.vim.git ~/dotfiles/vim/.vim/bundle/Vundle.vim && vim +BundleInstall +qall
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'https://github.com/Raimondi/delimitMate'
Plugin 'majutsushi/tagbar'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'tpope/vim-fireplace'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'itchyny/lightline.vim'
Plugin 'https://github.com/eagletmt/neco-ghc'

" Highlighting
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'https://github.com/tikhomirov/vim-glsl'
Plugin 'https://github.com/neovimhaskell/haskell-vim'


" Colorschemes
Plugin 'godlygeek/csapprox'

Plugin 'https://github.com/29decibel/codeschool-vim-theme'
Plugin 'https://github.com/jpo/vim-railscasts-theme'
Plugin 'https://github.com/tomasr/molokai'
Plugin 'https://github.com/morhetz/gruvbox'
Plugin 'https://github.com/gosukiwi/vim-atom-dark'
Plugin 'https://github.com/freeo/vim-kalisi'
Plugin 'https://github.com/whatyouhide/vim-gotham'
Plugin 'https://github.com/farseer90718/flattr.vim'
Plugin 'https://github.com/abra/vim-abra'
Plugin 'https://github.com/nanotech/jellybeans.vim'
Plugin 'https://github.com/djjcast/mirodark'
Plugin 'https://github.com/vim-scripts/BusyBee'
Plugin 'https://github.com/nickmyers217/vim_colors'

call vundle#end()

"" ctrlp Settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_wokring_path_mode = 'rw'

"" YCM syntax config file for C/C++ projects
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:clang_user_options = ' -DCLANG_COMPLETE_ONLY'
let g:ycm_semantic_triggers = {'haskell' : ['.']}

" syntatic http://git.io/syntastic.vim
" linters: (from aur) nodejs-jshint, nodejs-jsonlint, csslint, checkbashisms
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
highlight SyntasticErrorSign ctermfg=red ctermbg=237
highlight SyntasticWarningSign ctermfg=yellow ctermbg=237
highlight SyntasticStyleErrorSign ctermfg=red ctermbg=237
highlight SyntasticStyleWarningSign ctermfg=yellow ctermbg=237

" git-gutter http://git.io/vimgitgutter
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
let g:gitgutter_diff_args = '-w'
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = ':'
let g:gitgutter_max_signs = 1500
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green ctermbg=237
highlight GitGutterChange ctermfg=yellow ctermbg=237
highlight GitGutterDelete ctermfg=red ctermbg=237
highlight GitGutterChangeDelete ctermfg=red ctermbg=237


" ╻┏┓╻╺┳╸┏━╸┏━┓┏━╸┏━┓┏━╸┏━╸
" ┃┃┗┫ ┃ ┣╸ ┣┳┛┣╸ ┣━┫┃  ┣╸ 
" ╹╹ ╹ ╹ ┗━╸╹┗╸╹  ╹ ╹┗━╸┗━╸

" Settings
set t_Co=256
"colorscheme sourcerer
colorscheme atom-dark-256
filetype indent plugin on
syntax enable
filetype on
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set t_vb=
set mouse=a
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shortmess+=I

" maintain undo history between sessions
set undofile
set undodir=~/.vim/undo
set noswapfile

" Indentation
set shiftwidth=4
set tabstop=4
set list
"set listchars=eol:¬,extends:…,precedes:…,tab:\ \ 
set listchars=eol:\ ,extends:…,precedes:…,tab:\ \ 

"" Filetype specific indentation preferences
autocmd FileType c set shiftwidth=4|set tabstop=4
autocmd FileType cpp set shiftwidth=4|set tabstop=4
autocmd FileType glsl set shiftwidth=4|set tabstop=4
autocmd FileType javascript set shiftwidth=4|set tabstop=4
au FileType haskell setl sw=4 ts=8 sts=4 et shiftround


" ┏━╸┏━┓┏┳┓┏┳┓┏━┓┏┓╻╺┳┓┏━┓
" ┃  ┃ ┃┃┃┃┃┃┃┣━┫┃┗┫ ┃┃┗━┓
" ┗━╸┗━┛╹ ╹╹ ╹╹ ╹╹ ╹╺┻┛┗━┛

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
nnoremap <C-G> :YcmCompleter GoToDeclaration
nnoremap <C-O> :TagbarToggle

" Copy and paste with <leader> y and <leader> p
"vnoremap <silent> <leader>y :w !xsel -i -b<CR>
"nnoremap <silent> <leader>y V:w !xsel -i -b<CR>
"nnoremap <silent> <leader>p :silent :r !xsel -o -b<CR>


" ┏━┓╺┳╸┏━┓╺┳╸╻ ╻┏━┓╻  ╻┏┓╻┏━╸
" ┗━┓ ┃ ┣━┫ ┃ ┃ ┃┗━┓┃  ┃┃┗┫┣╸ 
" ┗━┛ ╹ ╹ ╹ ╹ ┗━┛┗━┛┗━╸╹╹ ╹┗━╸
" lightline http://git.io/lightline
" █▓▒░ wizard status line
set laststatus=2
let g:lightline = {
			\ 'colorscheme': 'sourcerer',
			\ 'active': {
			\   'left': [ [ 'filename' ],
			\             [ 'readonly', 'fugitive' ] ],
			\   'right': [ [ 'percent', 'lineinfo' ],
			\              [ 'fileencoding', 'filetype' ],
			\              [ 'fileformat', 'syntastic' ] ]
			\ },
			\ 'component_function': {
			\   'modified': 'WizMod',
			\   'readonly': 'WizRO',
			\   'fugitive': 'WizGit',
			\   'filename': 'WizName',
			\   'filetype': 'WizType',
			\   'fileformat' : 'WizFormat',
			\   'fileencoding': 'WizEncoding',
			\   'mode': 'WizMode',
			\ },
			\ 'component_expand': {
			\   'syntastic': 'SyntasticStatuslineFlag',
			\ },
			\ 'component_type': {
			\   'syntastic': 'error',
			\ },
			\ 'separator': { 'left': '▓▒░', 'right': '░▒▓' },
			\ 'subseparator': { 'left': '▒', 'right': '░' }
			\ }

function! WizMod()
	return &ft =~ 'help\|vimfiler' ? '' : &modified ? '»' : &modifiable ? '' : ''
endfunction

function! WizRO()
	return &ft !~? 'help\|vimfiler' && &readonly ? 'x' : ''
endfunction

function! WizGit()
	if &ft !~? 'help\|vimfiler' && exists("*fugitive#head")
		return fugitive#head()
	endif
	return ''
endfunction

function! WizName()
	return ('' != WizMod() ? WizMod() . ' ' : '') .
				\ ('' != expand('%:t') ? expand('%:t') : '[none]') 
endfunction

function! WizType()
	return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : '') : ''
endfunction

function! WizFormat()
	return ''
endfunction

function! WizEncoding()
	return winwidth(0) > 70 ? (strlen(&fenc) ? &enc : &enc) : ''
endfunction

augroup AutoSyntastic
	autocmd!
	autocmd BufWritePost *.c,*.cpp call s:syntastic()
augroup END
function! s:syntastic()
	SyntasticCheck
	call lightline#update()
endfunction

