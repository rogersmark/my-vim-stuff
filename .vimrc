filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on
syntax enable
" SETTINGS
colorscheme smyck
set t_Co=256
set transparency=10
set clipboard=unnamed
set guioptions+=LlRrb
set guioptions-=LlRrb
set guifont=Menlo\ Regular:h14
set colorcolumn=80
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set foldmethod=indent
set foldlevel=99
set foldnestmax=2
set number
set ruler
set completeopt=menuone,longest,preview
set wildignore+=*.pyc
set laststatus=2
set list
" Plugin configs
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'
let mapleader = ","

" KEY MAPPINGS
" Gotta stop using arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Tabs
map <leader>f :tabnext<CR>
map <leader>b :tabprevious<CR>

" NERDTree
map <leader>k :NERDTreeToggle<CR>

" TagBar
nmap <leader>1 :TagbarToggle<CR>

" ack keys
nmap <leader>a <Esc>:Ack!

" YankRing
nmap <leader>v :YRShow<CR>

" python-mode
let g:pymode_breakpoint_key = '<leader>q'
let g:pymode_breakpoint_cmd = "import ipdb; ipdb.set_trace() ### XXX BREAKPOINT"

" vim-pad
let g:pad_dir = '/Users/mark.rogers/Documents/notes'
