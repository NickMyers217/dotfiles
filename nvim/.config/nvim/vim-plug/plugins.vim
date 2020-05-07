" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  " TODO: Themes
  Plug 'christianchiarulli/onedark.vim'

  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'

  " Auto pairs for '(' '[' '{' 
  Plug 'jiangmiao/auto-pairs'

  " Status Line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Cool Icons
  Plug 'ryanoasis/vim-devicons'

  " TODO: Ranger
  " Plug 'francoiscabrol/ranger.vim'
  " Plug 'rbgrouleff/bclose.vim'
  " Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

  " TODO: FZF
  " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  " Plug 'junegunn/fzf.vim'

  " TODO: make sure this handles undo history across different sessions
  " TODO: Git (is this really any good? is there something that even comes close to magit?)
  " Plug 'mhinz/vim-signify'
  " Plug 'tpope/vim-fugitive'
  " Plug 'tpope/vim-rhubarb'
  " Plug 'junegunn/gv.vim'

  " TODO: Terminal
  " Plug 'voldikss/vim-floaterm'

  " TODO: Add some color
  " Plug 'norcalli/nvim-colorizer.lua'

  " TODO: Intellisense
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}

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

  " TODO: make sure we cover formatting
  " TODO: make sure we cover linting
  " TODO: make sure we cover debugging
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
