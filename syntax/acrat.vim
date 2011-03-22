" Vim syntax file
" Language:	C
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2009 Nov 17

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endi

" Reserved word
syn match Normal /\:/ contained


" Format
syn match Identifier /.*\:/ contains=Normal
