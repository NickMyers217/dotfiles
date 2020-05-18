hi Comment cterm=italic

"let g:onedark_hide_endofbuffer=1
"let g:onedark_terminal_italics=1
"let g:onedark_termcolors=256

let g:gruvbox_italic=1
let g:gruvbox_sign_column='bg0'
let g:gruvbox_contrast_dark='medium'

syntax on

colorscheme gruvbox

"colorscheme horizon
"highlight Pmenu ctermbg=111217 guibg=#111217

"colorscheme onedark

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
  set termguicolors
  hi LineNr ctermbg=NONE guibg=NONE
endif

""Lightline setup
let g:lightline = {}

let g:lightline.colorscheme = 'gruvbox'

let g:lightline.active = {
      \ 'left': [ [ 'mode', 'paste' ],
      \           [ 'gitbranch' ],
      \           [ 'repostats' ] ],
      \ 'right': [ [ 'percent' ],
      \            [ 'lineinfo' ],
      \            [ 'readonly', 'filename', 'modified' ] ]
      \ }


let g:lightline.tabline = {
      \   'left': [ ['buffers'] ],
      \   'right': [ [] ],
      \ }

let g:lightline.mode_map = {
      \ 'n' : 'N',
      \ 'i' : 'I',
      \ 'R' : 'R',
      \ 'v' : 'V',
      \ 'V' : 'VL',
      \ "\<C-v>": 'VB',
      \ 'c' : 'C',
      \ 's' : 'S',
      \ 'S' : 'SL',
      \ "\<C-s>": 'SB',
      \ 't': 'T',
      \ }

let g:lightline.component_expand = {
      \   'buffers': 'lightline#bufferline#buffers'
      \ }
let g:lightline.component_type = {
      \   'buffers': 'tabsel'
      \ }
let g:lightline.component_function = {
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \   'gitbranch': 'MyGitBranch',
      \   'repostats': 'MyGitStatus',
      \   'cocstatus': 'coc#status',
      \ } 

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! MyGitBranch()
  return '' . FugitiveHead()
endfunction

function! MyGitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction

let g:lightline#bufferline#show_number = 1
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#filename_modifier = ':t'
let g:lightline#bufferline#unnamed = '[No Name]'

