" VIM Configuration file
" Author    : V8d Patel
" Date      : 26 June 2018


" Disable vi compatibility
set nocompatible
filetype off

" Setup Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'

Plugin 'tomasr/molokai'
Plugin 'altercation/solarized'
Plugin 'chriskempson/tomorrow-theme'
Plugin 'nanotech/jellybeans.vim'

call vundle#end()

" Set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8



" Turn on syntax highlighting
syntax on
set t_Co=256


" Set cscope, ctags and doxygen toolkit
source ~/.vim/cscope_maps.vim
source ~/.vim/DoxygenToolkit.vim
set tags=./tags


" Set indentation and UI configs
set autoindent
set smartindent
set background=dark
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set textwidth=80
set showcmd
set wildmenu
set lazyredraw
set showmatch
set backspace=indent,eol,start

filetype on
filetype plugin on
filetype indent on


" Searching
set incsearch
set ignorecase
set hlsearch

nnoremap <leader>nhs :nohlsearch<CR>


" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=syntax

nmap <leader><space> za
nmap <leader>fe :set foldenable
nmap <leader>fd :set nofoldenable


" Autocmd
augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c | set cindent
augroup END

autocmd FileType * set tabstop=4|set softtabstop=4|set shiftwidth=4|set expandtab|set autoindent
autocmd BufNewFile,BufRead *.go setlocal ts=4 sw=4 sts=4
autocmd FileType go setlocal ts=4 sw=4 sts=4
autocmd FileType python set tabstop=4|set softtabstop=4|set shiftwidth=4|set expandtab|set autoindent
autocmd FileType ruby set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType javascript set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType css set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType scss set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType html set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent


" Save key bindings
nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>i
nmap <F3> :mksession!<CR>
imap <F3> <ESC>:mksession!<CR>i

" Line number key bindings
nmap <leader>sn :set number<CR>
nmap <leader>snn :set nonumber<CR>

" Buffer movement key bindings
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>

" CTags key bindings
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Mouse strategy key binding
nmap <leader>mc :set mouse=c<CR>
nmap <leader>ma :set mouse=a<CR>

" Remove Trailing spaces key binding
nmap <leader>pw :%s/\s\+$//e<CR>

" Replace word
nmap dar dawi


" Set C indent
nmap <leader>ci :set cindent<CR>
imap <leader>ci <ESC>:set cindent<CR>i


" Set FZF binding
nmap <C-f> :FZF<CR>
imap <C-f> :FZF<CR>


" Airline configs
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
