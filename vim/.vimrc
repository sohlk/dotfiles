call plug#begin('~/.vim/plugged')
""""""""""""""""""""""""""""""""""""""""
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
""""""""""""""""""""""""""""""""""""""""
call plug#end()
""""""""""""""""""""""""""""""""""""""""
set nocompatible
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set showmatch	" Highlight matching brace
set hlsearch	" Highlight all search results
set incsearch	" Searches for strings incrementally
set ruler	" Show row and column ruler information
set undolevels=1000	" Number of undo levels
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,gb2312,cp936,big5,gb18030,shift-jis,euc-jp,euc-kr,latin1
"smarter tab line of vim-airline
let g:airline#extensions#tabline#enabled = 1
"markdown键位
nmap <silent> <F8> <Plug>MarkdownPreview
"array bind to switch buffer
map <LEFT> :bp<CR>
map <RIGHT> :bn<CR>
"buffer delete without close windows
nmap <C-c> :bp\|bd #<CR>
"disable netrw
let loaded_netrwPlugin = 1
"leader key map
let mapleader = " "
"leaderf config
map <leader>p :Leaderf function<CR>
let g:Lf_WindowHeight = 0.25
let g:Lf_PreviewResult = { 'BufTag': 0,'Function': 0 }
let g:Lf_UseCache = 0
let g:Lf_ShowDevIcons = 0
let g:Lf_StlColorscheme = 'default'
"ariline theme
let g:airline_theme='silver'
"powerline font
let g:airline_powerline_fonts = 1
"display tab chracter
set list listchars=tab:\|\-,trail:\~
"indentline latex
let g:tex_conceal=''
let g:indentLine_enabled = 0
""""""""""""""""""""""""""""""""""""""""
"indent for different filetype
"default style
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

autocmd FileType c set expandtab softtabstop=4 shiftwidth=4
autocmd FileType cpp set expandtab softtabstop=2 shiftwidth=2
autocmd FileType make set noexpandtab tabstop=8 softtabstop=8 shiftwidth=8
autocmd FileType html set expandtab softtabstop=2 shiftwidth=2
autocmd FileType css set expandtab softtabstop=2 shiftwidth=2
autocmd FileType javascript set expandtab softtabstop=2 shiftwidth=2
autocmd FileType vue set expandtab softtabstop=2 shiftwidth=2
autocmd FileType javascriptreact set expandtab softtabstop=2 shiftwidth=2
autocmd FileType json set expandtab softtabstop=2 shiftwidth=2
autocmd FileType xml set expandtab softtabstop=2 shiftwidth=2
