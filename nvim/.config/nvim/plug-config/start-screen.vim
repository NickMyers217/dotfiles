let g:startify_custom_header =
      \ startify#pad(split(system('verse | cowsay -W 80'), '\n'))

let g:startify_session_dir = '~/.config/nvim/sessions'

let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   Files']                        },
      \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']                     },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
      \ ]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
      return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

let g:startify_bookmarks = [
      \ '~/code',
      \ { 'i': '~/.config/nvim/init.vim' },
      \ { 'c': '~/.config/i3/config' },
      \ { 't': '~/.config/kitty/kitty.conf' },
      \ { 'k': '~/.scripts/kali_setup' },
      \ { 'sh': '~/.config/fish/conf.d/omf.fish' },
      \ ]

let g:startify_enable_special = 0

