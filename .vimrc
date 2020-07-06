"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'vim-syntastic/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'l04m33/vlime', {'rtp': 'vim/'}
Plug 'junegunn/rainbow_parentheses.vim'

" Rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Plug Autoinstall
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors & Themes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme solarized

" Powerline pretty symbols
let g:airline_powerline_fonts = 1

" Activation based on file type
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,scheme,js,jsx,ts,tsx,rs RainbowParentheses
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Esc Normal/Input mode toggle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"if has('gui_running')
"  nnoremap <silent><Esc> i
"else 
"  " Map it after TermResponse to avoid terminal sending junk characters
"  " to our buffer
"  augroup normal_input_toggle
"    autocmd TermResponse * nnoremap <silent><Esc> i
"  augroup END

"end

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Essentials 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable 
set encoding=utf8

set number
set wrap
set ai "Auto indent
set si "Smart indent
set autoread
set ruler

filetype plugin on
filetype indent on

set lazyredraw 

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

set hlsearch
set incsearch 

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fast reloading of vimrc configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd! bufwritepost .vimrc source %

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "Auto close if last window is nerdtree
