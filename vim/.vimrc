call plug#begin('~/.vim/plugged')
""""""""""""""""""""""""""""""""""""""""
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

""""""""""""""""""""""""""""""""""""""""
call plug#end()
""""""""""""""""""""""""""""""""""""""""
set nocompatible
set number
set wrap
set showbreak=↪\ 
set showmatch
set hlsearch
set incsearch
set ruler
set undolevels=1000
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,gb2312,cp936,big5,gb18030,shift-jis,euc-jp,euc-kr,latin1
" ignore case
set ic
" smarter tab line of vim-airline
let g:airline#extensions#tabline#enabled = 1
" array bind to switch buffer
map <LEFT> :bp<CR>
map <RIGHT> :bn<CR>
" buffer delete without close windows
nmap <C-c> :bp\|bd #<CR>
" disable netrw
let loaded_netrwPlugin = 1
" ariline theme
let g:airline_theme='silver'
" powerline font
let g:airline_powerline_fonts = 1
" display tab chracter
set list listchars=tab:\|\-,trail:\~
" LeaderF
let mapleader = ' '
map <leader>p :Leaderf function<CR>
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
" youcompleteme
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_disable_for_files_larger_than_kb = 2000
set completeopt-=preview
nmap <leader>l <plug>(YCMHover)
let g:ycm_auto_hover = ''
" save root file
cmap w!! execute 'w !sudo tee > /dev/null %' <bar> e!
""""""""""""""""""""""""""""""""""""""""
"indent for different filetype
"default style
set expandtab
set shiftwidth=2
set softtabstop=2

autocmd FileType c set expandtab softtabstop=4 shiftwidth=4
autocmd FileType make set noexpandtab tabstop=8 softtabstop=8 shiftwidth=8
autocmd FileType sh set noexpandtab tabstop=4 softtabstop=4 shiftwidth=4
