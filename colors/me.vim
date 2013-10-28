set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

runtime colors/ron.vim

let g:colors_name = "me"

hi label		ctermfg=yellow
hi operator		ctermfg=yellow
