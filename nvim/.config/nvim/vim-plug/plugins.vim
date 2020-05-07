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

" Intellisense, lint, formatting, etc...
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Denite for navigation and general project management
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

" TODO: Ranger (is this really neccesarry)
" Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

" TODO: version control
" TODO: make sure this handles undo history across different sessions
" TODO: Git (is this really any good? is there something that even comes close to magit?)
" TODO: denite has git stuff, is it any better
" TODO: maybe just use lazygit https://github.com/kdheepak/lazygit.vim
" Plug 'mhinz/vim-signify'
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-rhubarb'
" Plug 'junegunn/gv.vim'

" TODO: Terminal
" Plug 'voldikss/vim-floaterm'

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
