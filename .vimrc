filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on
syntax enable
" SETTINGS
colorscheme wombat
if has('gui_running')
  colorscheme no_quarter
endif
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
" autocmd VimEnter * nested TagbarOpen
" autocmd VimEnter * nested :call tagbar#autoopen(1)
" autocmd FileType * nested :call tagbar#autoopen(0)
" autocmd BufEnter * nested :call tagbar#autoopen(0)
" Conque
let g:ConqueTerm_TERM = 'xterm'
map <leader>t :ConqueTermTab /bin/bash -l<CR>
map <leader>s :ConqueTermSplit /bin/bash -l<CR>
" ack keys
nmap <leader>a <Esc>:Ack!
" YankRing
nmap <leader>v :YRShow<CR>
" PEP8
let g:pep8_map='<leader>8'

command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
command! -complete=shellcmd -nargs=+ RunTests call s:RunShellCommand('fab test:'.<q-args>)
function! s:RunShellCommand(cmdline)
  let isfirst = 1
  let words = []
  for word in split(a:cmdline, ':\zs')
    if isfirst
      let isfirst = 0  " don't change first word (shell command)
    else
      if word[0] =~ '\v[%#<]'
        let word = expand(word)
      endif
      " let word = shellescape(word, 1)
    endif
    call add(words, word)
  endfor
  let expanded_cmdline = join(words, '')
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, 'You entered:  ' . a:cmdline)
  call setline(2, 'Expanded to:  ' . expanded_cmdline)
  call append(line('$'), substitute(getline(2), '.', '=', 'g'))
  silent execute '$read !'. expanded_cmdline
  1
endfunction
