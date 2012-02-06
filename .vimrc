call pathogen#infect()
syntax on
filetype plugin indent on

" PLUGIN CONFIGS AND MAPPINGS
set runtimepath-=~/.vim/bundle/autoclose
set runtimepath-=~/.vim/bundle/minibufexpl

noremap <F4> :NERDTreeToggle <CR>
noremap <C-C> :MSClear <CR>
noremap <C-O> :MSExecNormalCmd 
":NERDTreeToggle \| :silent NERDTreeMirror<CR>

" minibufexpl.vim config
let g:miniBufExplModSelTarget = 1
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplModSelTarget = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplVSplit = 25
let g:miniBufExplSplitBelow=1
noremap <c-w><c-t> :WMToggle<cr>


" KEYMAPPINGS
inoremap	kj	<Esc>
inoremap	<Left>	<NOP>
inoremap	<Down>	<NOP>
inoremap	<Up>	<NOP>
inoremap	<Right>	<NOP>
noremap	<C-S>	<Esc>:w<CR>i

noremap <F2> :set number <CR>
noremap <F3> :set nonumber <CR>
noremap <C-Q> :Bclose <CR>
noremap <F5> :ConqueTermTab python manage.py runserver 0.0.0.0:8000 <CR>
noremap <F7> :set filetype=html <CR>
"noremap <F7> :setlocal shiftwidth=2 tabstop=2 <CR>
noremap <F8> :so ~/.vimrc <CR>
noremap <C-J> i<CR><Esc>k$

" <leader> additions
noremap <leader>tn :tabnew %<cr>
noremap <leader>tc :tabclose<cr>
noremap <leader>tm :tabmove 

" command-line remappings
cno $h e ~/
cno $d e ~/Desktop/
cno $$ e ./


" AUTOCMDS
" autocmds
autocmd FileType html :setlocal shiftwidth=2 tabstop=2
"autocmd FileType html <F8>
" Note, perl automatically sets foldmethod in the syntax file
" default foldmethod=syntax
autocmd Syntax c,cpp,vim,xml,html,xhtml setlocal foldmethod=indent
autocmd Syntax c,cpp,vim,xml,html,xhtml,perl normal zR
"autocmd Syntax * normal zR
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview


" CONFIGS
set number
set autoindent autoread autowrite
set formatoptions+=r

set mouse=a

set smartindent
set tabstop=4 shiftwidth=4 expandtab

set incsearch
set hlsearch
set wildmenu
