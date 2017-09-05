""""""
" UI "
""""""

" automatically load changed files
set autoread

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

" When auto-indenting, use the indenting format of the previous line
set copyindent
" When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'.
" 'tabstop' is used in other places. A <BS> will delete a 'shiftwidth' worth of
" space at the start of the line.
set smarttab
" Copy indent from current line when starting a new line (typing <CR> in Insert
" mode or when using the "o" or "O" command)
set autoindent
" Automatically inserts one extra level of indentation in some cases, and works
" for C-like files
set smartindent

"""""""""
" Theme "
"""""""""

syntax enable
set background=dark "uncomment this if your terminal has a dark background
