"Use Vim settings, rather then Vi settings (much better!).
""This must be first, because it changes other options as a side effect.
set nocompatible

execute pathogen#infect()
syntax on
filetype plugin indent on

"colorscheme wombat
colorscheme Tomorrow-Night-Bright

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom
set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default
set wrap        "dont wrap lines
set linebreak   "wrap lines at convenient points
set mouse=a     "some stuff to get the mouse going in term
set t_Co=256    "tell the term has 256 colors
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set nobackup
set noswapfile
set number
"set guifont=mononoki:h16 "http://madmalik.github.io/mononoki/

if v:version >= 703
    "undo settings
    set undodir=~/.vim/undofiles
    set undofile
endif

nmap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <C-b> :BufExplorer<CR>

"key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()
