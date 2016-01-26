set nocompatible              " required
filetype off                  " required

" Enable syntax highlighting
set number

" Allow backspacing in insert mode
set backspace=2

" Highlight all search results
set hlsearch

" Set <leader> key
let mapleader=","

" Tab size
set ts=4 sts=4 sw=4
autocmd Filetype haskell setlocal ts=4 sts=0 et sw=4
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=4 sts=4 sw=4

" Indentation
set autoindent
filetype plugin indent on

" VIM Training
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'claco/jasmine.vim'
Plugin 'scrooloose/syntastic'
Plugin 'burnettk/vim-angular'
Plugin 'danro/rename.vim'

" end Vundle
call vundle#end()  " required

" Color Scheme
syntax enable
set background=dark
colorscheme solarized

" Indent Guides
let g:indent_guides_auto_colors=0
let g:indent_guides_enable_on_vim_startup=1
hi IndentGuidesOdd ctermbg=8
hi IndentGuidesEven ctermbg=0

" Airline Theme
let g:airline_theme='solarized'
set laststatus=2

" NERDTree Settings
map <C-n> :NERDTreeToggle<CR>

" Ctrl-p Settings
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" NERD Commenter Settings
filetype plugin on

" Vim JavaScript
let g:javascript_enable_domhtmlcss=1

" JavaScript Libraries Syntax
let g:used_javascript_libs = 'angularjs,react,jasmine,chai,angularuirouter'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
