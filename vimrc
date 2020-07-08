set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable shotcuts
nmap <space> za
nmap <C-t> :NERDTreeToggle<CR>

" Syntax highlight
let python_highlight_all=1
syntax on

" Plugin settings
let NERDTreeIgnore=['\.pyc$', '\~$']

" Common settings
set nu
set clipboard=unnamed

" Filetype-specific settings
au BufNewFile,BufRead *.py,*.json,*.yaml set
    \ tabstop=4 
    \ softtabstop=4 
    \ shiftwidth=4 
    \ textwidth=99    " PEP8 standard: 79
    \ expandtab 
    \ autoindent 
    \ fileformat=unix 

au BufNewFile,BufRead *.js,*.html,*.css set
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
