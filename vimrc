set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" My Bundles here:
"
" repo on github
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplcache'

" code commenter
Plugin 'scrooloose/nerdcommenter'   
" class browser
Plugin 'majutsushi/tagbar'
" fuzzy finder    
Plugin 'kien/ctrlp.vim'         
" python autocomplete
Plugin 'davidhalter/jedi-vim'
" PEP8
Plugin 'nvie/vim-flake8'            
" Syntax
Plugin 'plasticboy/vim-markdown'

" None github
Plugin 'https://github.com/fholgado/minibufexpl.vim.git'

Plugin 'AutoComplPop'

" colr scheme
Plugin 'Wombat'
Plugin 'Distinguished'
" Plugin 'Twilight-for-python'

if has("eval")
    let python_highlight_all = 1
    let python_slow_sync = 1
endif

filetype plugin indent on 

" tabs and spaces
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" tablength exceptions
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2

" display
set ls=2
set hlsearch
set ignorecase
set smartcase   " when there is a capital letter be sensitive
syntax on
set nu
set ruler
set showcmd
set guifont=Monaco:h10
set t_Co=256
" color twilight
set nofoldenable

" format
set autoindent
set nowrap
set textwidth=0

" plugin options
let g:vim_markdown_folding_disabled=1
" autocmd VimEnter * nested :call tagbar#autoopen(1)

" Key Map

nnoremap <C-F9> :NERDTreeToggle<CR>
nnoremap <C-F10> :TagbarToggle<CR>
" Tagbar keymap
noremap <C-Down> <C-W>j
noremap <C-Up> <C-W>k
noremap <C-Left> <C-W>h
noremap <C-Right> <C-W>l
noremap <C-TAB> :MBEbf<CR>
noremap <C-S-TAB> :MBEbb<CR>
