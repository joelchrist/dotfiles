if &compatible
  set nocompatible
endif

set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.config/nvim/dein')
  call dein#begin('~/.config/nvim/dein')

  call dein#add('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('moll/vim-node', {'on_ft': ['js']})
  call dein#add('pangloss/vim-javascript', {'on_ft': ['js']})
  call dein#add('airblade/vim-rooter')
  call dein#add('morhetz/gruvbox')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('scrooloose/nerdtree', {'on_cmd': 'NERDTreeToggle'})
  call dein#add('raimondi/delimitmate')
  call dein#add('unblevable/quick-scope')
  call dein#add('christoomey/vim-tmux-navigator')
  call dein#add('junegunn/fzf')
  call dein#add('/usr/local/opt/fzf')
  call dein#add('neomake/neomake')
  call dein#add('vim-airline/vim-airline')
  call dein#add('yggdroot/indentline')
  call dein#add('edkolev/tmuxline.vim')
  call dein#add('editorconfig/editorconfig-vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on

" Visuals
set t_Co=256
syntax enable
set background=dark
set relativenumber number
colorscheme gruvbox
set nowrap
let g:gruvbox_contrast_dark="soft"

" Nerdtree settings
nmap <leader>d :NERDTreeToggle<CR>

" DelimitMate settings
let delimitMate_expand_cr = 1

" Default tab settings
set tabstop=2
set shiftwidth=2
set expandtab

" Wrapping settings
set nowrap

" Split settings
set splitbelow
set splitright

" Ignore settings
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/target/*,*/build*,*/node_modules/*

" Custom commands
" Allow easier saving of files as root
command W :execute ':silent w !sudo tee % > /dev/null' | edit!

" Clipboard settings
set clipboard=unnamed

" FZF settings
let g:fzf_action = {
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit',
  \ 'ctrl-t': 'tab split'
  \ }
nnoremap <leader><SPACE> :FZF<CR>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Better undo configuration
set undodir=~/.config/nvim/undodir
set undofile

" Neomake settings
let g:neomake_place_signs = 0
let g:neomake_open_list = 2

" Search settings
nnoremap <F3> :nohlsearch<CR>

" Language settings (because NeoVim needs them)
set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)
language en_US              " sets the language of the messages / ui (vim)

" Airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme = 'gruvbox'

" Cursor settings
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

