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

" Denite and rnvimr for navigation and general project management
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'rafi/vim-denite-session'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'} " adds ranger support

" Version Control
Plug 'mhinz/vim-signify' " adds gutter diff info
Plug 'chemzqm/denite-git'
"TODO: Plug 'kdheepak/lazygit.vim'

" Terminal
Plug 'kassio/neoterm'

" Highlight colors
Plug 'norcalli/nvim-colorizer.lua'

" Start Screen
Plug 'mhinz/vim-startify'

" Help
" TODO: configure this to actually be useful?
Plug 'liuchengxu/vim-which-key'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
      \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \|   PlugInstall --sync | q
      \| endif
