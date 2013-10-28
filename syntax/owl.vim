" Vim syntax file
" Language: Owl Files
" Maintainer: Kenneth Cheng
" Latest Revision: 25 April 2013

if exists("b:current_syntax")
  finish
endif

" Keyword
syn match comment '#.*$' display

syn keyword reserved null dead
syn match litString '"[^"]*"' display
syn match litInt '\<\d\+\>' display
syn match litFloat '\<\d*\.\?\d\+\>' display
syn keyword litBool True False display

"syn match id '\w\+' contained
syn keyword three_es enter exit end
syn keyword _function print input groups range alive step goto
syn keyword _function toInt toFloat toBool toString

syn keyword _selection if else
syn keyword _iteration for while in
syn keyword return return
syn keyword new new
syn match arrow "->" display

syn keyword _type void int bool string list nextgroup=id skipwhite
syn keyword node node
syn keyword machine machine


" Regions
"syn region syntaxElementRegion start='x' end


" Highlighting
let b:current_syntax = "cel"
hi def link comment Comment

hi def link reserved Constant
hi def link litString String
hi def link litInt Number
hi def link litFloat Number
hi def link litBool Boolean

hi def link id Identifier
hi def link three_es Function
hi def link _function Function

hi def link _selection Conditional
hi def link _iteration Repeat
hi def link return Keyword
hi def link arrow Operator

hi def link _type Type
hi def link node Type
hi def link machine Keyword
