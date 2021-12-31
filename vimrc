call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'roman/golden-ratio'
Plug 'mmozuras/vim-whitespace'
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'wincent/terminus'
Plug 'elixir-editors/vim-elixir'
Plug 'junegunn/seoul256.vim'
call plug#end()

filetype detect

let mapleader = ","
nnoremap <silent> <Leader><space>    :noh<CR>
nnoremap <silent> <Leader>s          :Ag<CR>
nnoremap <silent> <Leader>v          :vsp<CR>
nnoremap <silent> <Leader>h          :sp<CR>
nnoremap 0                           ^
nnoremap <Leader>b :Buffers<CR>

"disables lint highlighting (still visible in gutter)
let g:ale_set_highlights = 0
let g:ale_hover_cursor = 0

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

"tmux navigation
nnoremap <c-l>              <c-w>l
nnoremap <c-k>              <c-w>k
nnoremap <c-j>              <c-w>j
nnoremap <c-h>              <c-w>h

"git
nnoremap <Leader>a :!git add %<CR>

"elixir
if index(['ex', 'exs'], &filetype) == -1
  nnoremap <Leader>t :!mix test %<CR>
  nnoremap <Leader>T :!mix test <CR>
  nnoremap <Leader>l :!mix format %<CR>
  nnoremap <Leader>L :!mix format --check-formatted <CR>
  nnoremap <Leader>c :!mix credo %<CR>
endif

"fzf config"
set rtp+=/usr/local/opt/fzf
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"Exclude matches in filename
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

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
set wrap
set expandtab
set noswapfile

set shiftwidth=2
set softtabstop=2
set tabstop=2

set t_Co=256 "May not be necessary?

let g:seoul256_background = 235
colo seoul256

" Speed improvements
set re=1 "use older version of regex engine
set ttyfast
set lazyredraw

set clipboard=unnamed "Set default clipboard to system clipboard

let g:deoplete#enable_at_startup = 1
