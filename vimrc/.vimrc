syntax on

call plug#begin('~/.vim/plugged')

Plug 'mbbill/undotree'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'preservim/nerdtree'
Plug 'hashivim/vim-terraform'
Plug 'lambdalisue/battery.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'ryanoasis/vim-devicons'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gmoe/vim-espresso'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/seoul256.vim'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'morhetz/gruvbox'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'sainnhe/everforest'
Plug 'ghifarit53/tokyonight-vim'

call plug#end()

filetype plugin indent on
set termguicolors

let g:tokyonight_style = 'storm'
let g:tokyonight_enable_italic = 1

set background=dark

set cursorline
map <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1
set encoding=utf-8
set fileencoding=utf-8
nnoremap <leader>u :UndotreeShow<CR>
set guicursor=
set noshowmatch
set relativenumber
set nohlsearch
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set cmdheight=2
set updatetime=50
set shortmess+=c
set backspace=indent,eol,start
set showcmd
set timeoutlen=1000
set ttimeoutlen=0
let mapleader = " "

nnoremap <leader>w :w<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>fm gg=G<CR>

" Go specific
let g:go_gopls_enabled = 1
let g:go_version_warning = 0
let g:go_autodetect_gopath = 1
let g:go_fmt_command = "goimports"

" Terraform
let g:terraform_fmt_on_save=1

set guifont=SpaceMono_Nerd_Font:h14
let g:airline_powerline_fonts = 1
let g:airline_theme='murmur'

