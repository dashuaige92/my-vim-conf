" Vim syntax file
" Language: Owl Files
" Maintainer: Kenneth Cheng
" Latest Revision: 25 April 2013

if exists("b:current_syntax")
  finish
endif

" Keyword
syn match comment '#.*$' display

syn match litString '"[^"]*"' display
syn match litInt '\<\d\+\>' display
syn match litFloat '\<\d*\.\?\d\+\>' display
syn keyword litBool True False display

syn match block '^Trigger'
syn match block '^Conditions'
syn match block '^Actions'
syn match condition '^\tAccumulate'
syn match condition '^\tAlways'
syn match condition '^\tSwitch'
syn match action '^\tComment'
syn match action '^\tPreserve Trigger'

syn match catResourceType ', \zsore'

" Regions
"syn region syntaxElementRegion start='x' end

" Highlighting
let b:current_syntax = "cel"
hi def link comment Comment

hi def link litString String
hi def link litInt Number
hi def link litFloat Number
hi def link litBool Boolean

hi def link block Keyword
hi def link condition Function
hi def link action Function
hi def link catResourceType Constant
