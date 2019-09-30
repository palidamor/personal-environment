" Note: David H. VIM Config

set nocompatible      " required
filetype off          " required

set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Note: Will have to google how to install this before doing anything else.
Bundle 'Valloric/YouCompleteMe'

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Code Folding Plugin
Plugin 'tmhedberg/SimpylFold'
" Auto Indent Plugin
Plugin 'vim-scripts/indentpython.vim'
" Syntax Highlighting Plugin
Plugin 'vim-syntastic/syntastic'
" PEP 8 Checker
Plugin 'nvie/vim-flake8'
" Awesome NerdTree
Plugin 'scrooloose/nerdtree'
" NerdTree Git Support
Plugin 'xuyuanp/nerdtree-git-plugin'
" Super Search in VIM use ctrl + p to enable search
Plugin 'ctrlpvim/ctrlp.vim'
" NerdTree DevIcon Support
Plugin 'ryanoasis/vim-devicons'
" Set NerdTree to start when vim starts
autocmd vimenter * NERDTree
" Set NerdTree to close if its is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Ignore .pyc in NerdTree
let NERDTreeIgnore=['\.pyc$', '\~$']

" Add some color on the subject
Plugin 'jnurmine/Zenburn'

" Add some GIT Command support
Plugin 'tpope/vim-fugitive'

" Fuck yeah powerline!!!
" sudo apt-get install fonts-powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" VIM has its own clipboard which sucks so this alows you to copy/paste
set clipboard=unnamed

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set splitbelow
set splitright

" Split navigations ctrl + j, etc.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" PEP 8 Indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Remove Unnecessary Whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Make code look pretty
let python_highlight_all=1
syntax on

" Set Line Numbering
set nu

