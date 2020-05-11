" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
" Terminal
Plug 'kassio/neoterm'

" Syntax and Themeing
Plug 'sheerun/vim-polyglot'
Plug 'ryanoasis/vim-devicons'
Plug 'ntk148v/vim-horizon'
Plug 'morhetz/gruvbox'
Plug 'christianchiarulli/onedark.vim'

" Utils
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'unblevable/quick-scope'

" Start Screen
Plug 'mhinz/vim-startify'

" Navigation
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'} " adds ranger support
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Version Control
Plug 'mhinz/vim-signify' " adds gutter diff info
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" Intellisense, lint, formatting, etc...
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Status and tab lines
"Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" Help
" TODO: configure this to actually be useful?
"Plug 'liuchengxu/vim-which-key'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
      \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \|   PlugInstall --sync | q
      \| endif
