" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'vim-airline/vim-airline'

" a vim plug to display the indention level with vertical line.
Plug 'yggdroot/indentline'

Plug 'vim-scripts/taglist.vim'

" Plug 'valloric/youcompleteme'

" a vim plug which shows git diff marks
Plug 'airblade/vim-gitgutter'

" a git warpper
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()

let g:indentLine_color_term = 239
let g:indentLine_char = '¦'
let g:indentLine_enabled = 1

