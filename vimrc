" Enable pathogen to load addons
execute pathogen#infect()

" Enable vim-airline in standard window
set laststatus=2

" Better time out on exiting command mode
set timeoutlen=50

set encoding=utf-8

syntax on
filetype plugin indent on

set autoread

" Options for the gruvbox color scheme
"set background=light
"set background=dark
"colorscheme gruvbox

" Options for the molokai color scheme
"let g:molokai_original = 1
"let g:rehash256 = 1
"colorscheme molokai

"set background=light
set background=dark
colorscheme solarized

let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1

set ai
set nu
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set wrap
set hlsearch

set textwidth=79
set ruler
" set mouse=a

" Disable arrow keys in command-mode
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>

" Make moment on line if wrapped.
map j gj
map k gk

setlocal spell spelllang=en_us

" Enable spell check for TeX files
autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_us
" Enable spell check for .txt files
autocmd BufRead,BufNewFile *.txt setlocal spell spelllang=en_us
" Enable spell check for git commits
autocmd FileType gitcommit setlocal spell spelllang=en_us

" Preferred TeX flavor is LaTeX
let g:tex_flavor = "latex"

" Sets tab completion
set wildmode=longest,list,full
set wildmenu

" Disable double space after period when reformatting.
set nojoinspaces
