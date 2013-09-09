set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"General {
    filetype plugin indent on
    syntax on
    set autochdir
    set ignorecase smartcase
    set nobackup
    set guioptions+=b
    let Tlist_Ctags_Cmd='C:\Program Files\Vim\vimfiles\ctags58\ctags.exe'
"}
"Vim UI {
    colorscheme ir_black
    set guifont=Monaco:h10
"    set lines=40
    set showmode
    set cursorline
    set ruler
    set showcmd
    set nu
    set showmatch
    set incsearch
    set hlsearch
    set smartcase           " smart sensitive
    set foldenable          " auto folde code
"}

" Formating {
"   set encoding=UTF-8      " have bug!
    set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
"    lang message en
"	source $VIMRUNTIME\delmenu.vim
"	set langmenu=en
"	source $VIMRUNTIME\menu.vim
    set nowrap
    set autoindent
    set expandtab
    set shiftwidth=4
    set softtabstop=4
    set tabstop=4
    set foldmethod=syntax
    set ofu=syntaxcomplete#Complete
" }
" Key Mapping {
    " Yank from cursor to the end of the line
    "nnoremap Y y$           
    " Change working directory
    cmap cwd lcd %:p:h      
    nmap <C-F9> :TrinityToggleSourceExplorer<CR>
    nnoremap <C-F10> :TrinityToggleAll<CR> 
    nnoremap <C-F11> :NERDTreeToggle<CR>
    nnoremap <C-F12> :TlistToggle<CR>
"}

