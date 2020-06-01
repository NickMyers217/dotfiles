" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
" Syntax and Themeing
Plug 'sheerun/vim-polyglot'
Plug 'ryanoasis/vim-devicons'
Plug 'ntk148v/vim-horizon'
Plug 'gruvbox-community/gruvbox'
Plug 'christianchiarulli/onedark.vim'

" Utils
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'preservim/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'unblevable/quick-scope'
Plug 'rbgrouleff/bclose.vim'

" Start Screen
Plug 'mhinz/vim-startify'

" Navigation
Plug 'francoiscabrol/ranger.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Version Control
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" Intellisense, lint, formatting, etc...
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Status and tab lines
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" Terminal
Plug 'kassio/neoterm'

" REPL
" FIXME: this is not maintained and needs a replacement
Plug 'ChristianChiarulli/codi.vim'

" Help
Plug 'liuchengxu/vim-which-key'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
      \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \|   PlugInstall --sync | q
      \| endif
