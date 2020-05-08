" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
" Syntax and Themeing
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'christianchiarulli/onedark.vim'
Plug 'ryanoasis/vim-devicons'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Intellisense, lint, formatting, etc...
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" TODO: sessions?
" Denite and rnvimr for navigation and general project management
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'} " adds ranger support

" TODO: persistent undo
" Version Control
Plug 'mhinz/vim-signify' " adds gutter diff info
Plug 'chemzqm/denite-git'
"Plug 'kdheepak/lazygit.vim'

" Terminal
Plug 'kassio/neoterm'

" TODO: Add some color
" Plug 'norcalli/nvim-colorizer.lua'

" TODO: Start Screen
" Plug 'mhinz/vim-startify'

" TODO: Vista
" Plug 'liuchengxu/vista.vim'

" TODO: Help
" Plug 'liuchengxu/vim-which-key'

" TODO: Zen mode
" Plug 'junegunn/goyo.vim'

" TODO: Making stuff
" Plug 'neomake/neomake'

" TODO: Better Comments
" Plug 'jbgutierrez/vim-better-comments'

" TODO: make sure we cover debugging
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
      \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \|   PlugInstall --sync | q
      \| endif
