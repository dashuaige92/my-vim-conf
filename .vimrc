call pathogen#infect()
syntax on
filetype plugin indent on
noremap <F4> :NERDTree <CR>
noremap <C-C> :MSClear <CR>
noremap <C-O> :MSExecNormalCmd 
noremap <F7> :set filetype=html <CR>
noremap <F8> :set filetype=django <CR>
noremap <F9> :so ~/.vimrc <CR>

noremap <F5> :ConqueTermTab python manage.py runserver 0.0.0.0:8000 <CR>

set runtimepath-=~/.vim/bundle/autoclose
autocmd FileType html setlocal shiftwidth=2 tabstop=2

inoremap	kj	<Esc>
inoremap	<Left>	<NOP>
inoremap	<Down>	<NOP>
inoremap	<Up>	<NOP>
inoremap	<Right>	<NOP>

noremap <F2> :set number <CR>
noremap <F3> :set nonumber <CR>
:set number

:filetype plugin on
:syntax on

:set autoindent
:set autoread
:set autowrite
":set foldclose
:set foldmethod=indent
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview
:set formatoptions+=r

:set mouse=a
:set smartindent
:set tabstop=4 shiftwidth=4 expandtab
