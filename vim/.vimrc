call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'rodjek/vim-puppet'
Plug 'airblade/vim-rooter'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'junegunn/fzf.vim'
Plug 'sonph/onehalf',{ 'rtp': 'vim/'}
Plug 'ap/vim-buftabline'
Plug 'tpope/vim-fugitive'
Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'requalix/detect-indentation'

call plug#end()
set rtp+=/usr/local/opt/fzf

""""""""""""
" Bindings "
""""""""""""
let mapleader = ","
map <leader>d :NERDTreeToggle<CR>
map <leader>n :FZF<CR>
map <leader>b :Buffers<CR>

""""""
" UI "
""""""

" automatically load changed files
set autoread

"set et sw=2 ts=2 sts=2

" auto-reload vimrc
autocmd! bufwritepost .vimrc source ~/.vimrc
"autocmd! bufwritepost gvimrc source ~/.vim/gvimrc

"Allow backspace to work like in most programs
set backspace=indent,eol,start

" set encoding
set encoding=utf-8

" mouse support
set mouse=a

" line numbers
set number
set relativenumber

" ignore whitespace in diff mode
set diffopt+=iwhite

" Be able to arrow key and backspace across newlines
set whichwrap=bs<>[]

" Status bar
set laststatus=2

" make laggy connections work faster
set ttyfast

" let vim open up to 100 tabs at once
set tabpagemax=100

" case-insensitive filename completion
set wildignorecase

"""""""""""""
" Searching "
"""""""""""""

set hlsearch "when there is a previous search pattern, highlight all its matches
set incsearch "while typing a search command, show immediately where the so far typed pattern matches
set ignorecase "ignore case in search patterns
set smartcase "override the 'ignorecase' option if the search pattern contains uppercase characters
set gdefault "imply global for new searches

"""""""""""""
" Indenting "
"""""""""""""
set autoindent

"""""""""
" Theme "
"""""""""

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

syntax enable
set t_Co=256
set cursorline
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
" lightline
" let g:lightline.colorscheme='onehalfdark'


set autowrite

filetype plugin indent on


" Map NERDTree to leader + d
nmap <leader>d :NERDTreeToggle<cr>

"Exit VIM if NERDTree is only leftover buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

silent! map <F3> :nohlsearch<CR>

let vim_markdown_preview_github=1
set clipboard=unnamed

" Set cursor for iTerm
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
