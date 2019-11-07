if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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
Plug 'ap/vim-buftabline'
Plug 'tpope/vim-fugitive'
Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'requalix/detect-indentation'
Plug 'vim-scripts/vim-auto-save'

call plug#end()
set rtp+=/usr/local/opt/fzf

""""""""""""
" Bindings "
""""""""""""
let mapleader = ","
map <leader>d :NERDTreeToggle<CR>
map <leader>n :FZF<CR>
map <leader>a :Ag<CR>
map <leader>f :Lines<CR>
map <leader>b :Buffers<CR>

nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

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
set cursorline
set background=dark
if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes work
  " properly within 256-color terminals
  set t_ut=
endif
set t_Co=16
let g:airline_theme='darkblue'
" lightline


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


" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir
" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

" Autosave
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0

