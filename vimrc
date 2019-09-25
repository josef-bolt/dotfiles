"general mappings
let mapleader = ","
nnoremap <Leader><space>    :noh<CR>
nnoremap <Leader>s          :Ag<CR>

"fzf config
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

set nocompatible "Prevents distro specific issues
filetype indent plugin on "Determine filetype for appropriate indentations
syntax on "Enable syntax highlighting

set wildmenu "Better command line completion
set showcmd "Show partial commands at bottom of screen
set hlsearch "Highlighting search

set ignorecase "Ignore case in searches, unless query contains uppercase
set smartcase

set backspace=indent,eol,start "Backspace over indents and eol
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set mouse=a
set number
set cmdheight=2

set shiftwidth=4
set softtabstop=4
set expandtab

set t_Co=256 "May not be necessary?

let g:pymode_python = 'python3'

autocmd VimEnter * colo gruvbox "Hack because vim can't find colourscheme on startup

"Auto closing paired characters
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>0
inoremap {{     {
inoremap {}     {}

let g:deoplete#enable_at_startup = 1

call plug#begin('~/.vim/plugged')
Plug 'mmozuras/vim-whitespace'
Plug 'udalov/kotlin-vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
call plug#end()
