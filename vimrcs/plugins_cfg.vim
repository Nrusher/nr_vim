" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" a vim plug to enhance status bar
Plug 'vim-airline/vim-airline'

" a vim plug to display the indention level with vertical line.
Plug 'yggdroot/indentline'

" a vim plug
Plug 'vim-scripts/taglist.vim'

" a vim plug which shows git diff marks
Plug 'airblade/vim-gitgutter'

" a git warpper
Plug 'tpope/vim-fugitive'

" a vim plug which can fuzzy search
Plug 'junegunn/fzf'

" 
Plug 'scrooloose/nerdtree'

Plug 'rhysd/vim-clang-format'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()

" ============================
" coc.nvim
" ============================
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" insert coc_plugs here
let coc_global_extensions =  [
	\ 'coc-json',
	\ 'coc-vimlsp',
	\ 'coc-python',
	\ 'coc-clangd',
	\ 'coc-marketplace']

" coc-marketplace:  
" (1) use CocList marketplace to find some plug
" B
" (2) slecet a plug press enter, then we can install it

" ============================
" indentline
" ============================
let g:indentLine_color_term = 239
let g:indentLine_char = '¦'
let g:indentLine_enabled = 1


" ============================
" fzf
" ============================
nmap <C-p> :FZF<CR>

" ============================
" vim-clang-format
" ============================
let g:clang_format#detect_style_file=1


" ============================
" NERDtree
" ============================
nmap <C-t> :NERDTreeToggle<CR>


" ============================
" cscope  
" ============================
" cscope should be installed first
" apt install cscope

"set cscopequickfix=s-,c-,d-,i-,t-,e-,a-

if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
 endif

let cs_auto_jump=0

nmap \s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap \g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap \c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap \t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap \e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap \f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap \i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap \d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap \S :cs find t struct <C-R>=expand("<cword>")<CR> {<CR>

