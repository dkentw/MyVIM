set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" repo on github
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neocomplcache'

" code commenter
Bundle 'scrooloose/nerdcommenter'   
" class browser
Bundle 'majutsushi/tagbar'
" fuzzy finder    
Bundle 'kien/ctrlp.vim'         
" python autocomplete
Bundle 'davidhalter/jedi-vim'
" PEP8
Bundle 'nvie/vim-flake8'            

" None github
Bundle 'https://github.com/fholgado/minibufexpl.vim.git'

Bundle 'AutoComplPop'

" colr scheme
Bundle 'Wombat'
Bundle 'Distinguished'
Bundle 'Twilight-for-python'

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
set smartcase	" when there is a capital letter be sensitive
syntax on
set nu
set ruler
set showcmd
set guifont=Monaco:h10
set t_Co=256
color twilight

" format
set autoindent
set nowrap
set textwidth=0


" Key Map
"
nnoremap <C-F9> :NERDTreeToggle<CR>
nnoremap <C-F10> :TagbarToggle<CR>
