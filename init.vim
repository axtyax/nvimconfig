""" Darius' Neovim init.vim

""" Vim-Plug
call plug#begin()

" General Syntax and Navigation
Plug 'universal-ctags/ctags'
Plug 'sheerun/vim-polyglot'
Plug 'ycm-core/ycmd'
Plug 'ycm-core/youcompleteme'
Plug 'morhetz/gruvbox'

" Aesthetics - Colors
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bryanmylee/vim-colorscheme-icons'
Plug 'ryanoasis/nerd-fonts'

" Aethetics - Additional
Plug 'nightsense/nemo'
Plug 'yuttie/hydrangea-vim'
Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }
Plug 'rhysd/vim-color-spring-night'
Plug 'vim-airline/vim-airline'

" Tooling
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-sensible'
Plug 'sickill/vim-pasta'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'

" Interface
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf'

call plug#end()

""" Basic Editor Configurations
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set wildmode=longest,list,full wildmenu
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set textwidth=4
set hidden
set number
set title

""" Custom Mappings

""" Editor Navigation
nmap <C-q> :tabclose<CR>
nmap <S-q> :q<CR>
nmap <C-s> :w<CR>

nmap <C-d> :tabnext<CR>
nmap <C-a> :tabprev<CR>

nnoremap <C-h> <C-W><C-h>
nnoremap <C-l> <C-W><C-l>

autocmd BufReadPost,FileReadPost * :TagbarOpen
autocmd BufReadPost,FileReadPost * :NERDTreeFocus

""" Aesthetics
autocmd VimEnter * :colorscheme moriarty

""" Tools
let mapleader='\'
nmap <leader>1 :NERDTreeToggle<CR>
nmap <leader>2 :TagbarToggle<CR>

nnoremap <silent> <leader>t :FloatermToggle<CR>
tnoremap <silent> <leader>t <C-\><C-n>:FloatermToggle<CR>

nmap <leader>f :FZF<CR>
"nmap <leader>z :Rg<CR>
"nmap <leader>x :Files<CR>

nmap <silent> <leader><leader> :noh<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
