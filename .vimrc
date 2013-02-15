set nocompatible
filetype off

set rtp+=/home/f4nt/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle" required!
Bundle 'gmarik/vundle'

" The bundles you install will be listed here

Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'kien/ctrlp.vim'
Bundle 'hukl/Smyck-Color-Scheme'
Bundle 'plasticboy/vim-markdown'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on

" The rest of your config follows here

" Style Stuff
syntax enable
colorscheme smyck
set t_Co=256
set colorcolumn=80

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Folding
set foldmethod=indent
set foldlevel=99
set foldnestmax=2
set laststatus=2

" Misc
set number
set ruler
set completeopt=menuone,longest,preview
set wildignore+=*.pyc
set list

" KEY MAPPINGS
let mapleader = ","
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
map <leader>f :tabnext<CR>
map <leader>b :tabprevious<CR>

" NERDTree
map <leader>k :NERDTreeToggle<CR>

" CtrlP
nmap <leader>p :CtrlPBuffer<CR>

" python-mode
let g:pymode_breakpoint_key = '<leader>q'
let g:pymode_breakpoint_cmd = "import ipdb; ipdb.set_trace() ### XXX BREAKPOINT"
let g:pymode_lint_ignore = 'E261,E127,E128,E501'
let g:pymode_rope_always_show_complete_menu = 1
