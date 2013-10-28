" Vim syntax file
" Language: GG Files
" Maintainer: Kenneth Cheng
" Latest Revision: 6 February 2013

if exists("b:current_syntax")
  finish
endif

" Keyword
"syn keyword syntaxElementKeyword keyword1 keyword2 nextgroup=syntaxElement2
syn match lineComment '//.*$' display
syn region multilineComment start='/\*' end='\*/' extend
"syn match multilineComment '/\*([^*]\|[\r\n]\|(\*\+([^*/]\|[\r\n])))*\*\+/'

syn keyword reservedConstant empty
syn match lineString '"[^"]*"' display
syn match lineString "'[^"]*'" display
syn match lineChar '"[^"]"' display
syn match lineChar "'[^"]'" display
syn match integer '[-+]\?\d*\.\?\d\+' display
syn keyword bool true false display

syn match state '\w\+' contained display
syn keyword stateFunction start setup teardown input
syn keyword stdFunction print

syn keyword stateKeyword state substate nextgroup=state skipwhite
syn keyword conditional if else
syn keyword repeater for while in
syn keyword operator goto


syn keyword primitiveTypes bool int string list dict
"syn match functionalTypes '([^)]*)'
syn keyword definitionKeyword id type


" Regions
"syn region syntaxElementRegion start='x' end


" Highlighting
let b:current_syntax = "cel"
hi def link lineComment Comment
hi def link multilineComment Comment

hi def link reservedConstant Constant
hi def link lineString String
hi def link lineChar Character
hi def link integer Number
hi def link bool Boolean

hi def link state Identifier
hi def link stateFunction Function
hi def link stdFunction Function

hi def link stateKeyword Keyword
hi def link conditional Conditional
hi def link repeater Repeat
hi def link operator Operator

hi def link primitiveTypes Type
hi def link functionalTypes Type
hi def link definitionKeyword Structure
