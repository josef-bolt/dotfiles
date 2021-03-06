call plug#begin('~/.vim/plugged')
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'vim-scripts/Highlight-UnMatched-Brackets'
Plug 'tpope/vim-endwise'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'mustache/vim-mustache-handlebars'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'roman/golden-ratio'
Plug 'mmozuras/vim-whitespace'
Plug 'udalov/kotlin-vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
call plug#end()

let mapleader = ","
nnoremap <silent> <Leader><space>    :noh<CR>
nnoremap <silent> <Leader>s          :Ag<CR>
nnoremap <silent> <Leader>v          :vsp<CR>
nnoremap <silent> <Leader>h          :sp<CR>
nnoremap 0                           ^
nnoremap <Leader>b :Buffers<CR>

"compile and execute kotlin files. n.b. this is digusting
nnoremap <Leader>m :!kotlinc % -include-runtime -d %:r.jar<CR> <Bar> :! java -jar %:r.jar<CR>

"tmux navigation
nnoremap <c-l>              <c-w>l
nnoremap <c-k>              <c-w>k
nnoremap <c-j>              <c-w>j
nnoremap <c-h>              <c-w>h

"fzf config
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

autocmd FileType kotlin setlocal shiftwidth=4 softtabstop=4 expandtab

set t_Co=256 "May not be necessary?

" Speed improvements
set re=1 "use older version of regex engine
set ttyfast
set lazyredraw

set clipboard=unnamed "Set default clipboard to system clipboard

autocmd VimEnter * colo gruvbox "Hack because vim can't find colourscheme on startup

let g:deoplete#enable_at_startup = 1
