call pathogen#infect()
syntax on
filetype plugin indent on

" PLUGIN CONFIGS AND MAPPINGS
set runtimepath-=~/.vim/bundle/autoclose
set runtimepath-=~/.vim/bundle/minibufexpl
"set runtimepath-=~/.vim/bundle/tagbar

" multiselect config
"noremap <C-C> :MSClear <CR>
"noremap <C-O> :MSExecNormalCmd 

" NERDTree config
let g:nerdtree_tabs_open_on_console_startup = 1
let g:NERDTreeShowLineNumbers = 1
noremap <F4> :NERDTreeToggle <CR>

" minibufexpl.vim config
let g:miniBufExplModSelTarget = 1
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplModSelTarget = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplVSplit = 25
let g:miniBufExplSplitBelow=1
noremap <c-w><c-t> :WMToggle<cr>

" tagbar config
let g:Tlist_WinWidth = 50
noremap <F3> :TagbarToggle <CR>
set tags=./tags;/
"set tags+=/usr/local/share/ctags/qt4
noremap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
noremap <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>


" KEYMAPPINGS
inoremap	kj	<Esc>
inoremap	<Left>	<NOP>
inoremap	<Down>	<NOP>
inoremap	<Up>	<Esc>:w<CR>
inoremap	<Right>	<NOP>

"noremap <F5> :ConqueTermTab python manage.py runserver 0.0.0.0:8000 <CR>
":set pastetoggle=<F6>
noremap <F2> :set number! <CR>
noremap <F7> :set filetype=html <CR>
noremap <F9> :so ~/.vimrc <CR>
noremap <C-C> :Bclose <CR>
noremap <C-J> a<CR><Esc>k$

" <leader> additions
noremap <leader>td :tabnew %<cr>
noremap <leader>tn :tabnew<cr>
noremap <leader>tc :tabclose<cr>
noremap <leader>tm :tabmove 
noremap <leader>ss :mksession<cr>
noremap <leader>sc :w<cr>:tabclose<cr>
noremap <leader>sq :wqa<cr>


" command-line remappings
cno $h e ~/
cno $d e ~/Desktop/
cno $$ e ./


" AUTOCMDS
au BufRead,BufNewFile *.php set ft=php.html
au BufRead,BufNewFile *.js set ft=javascript.html
au BufRead,BufNewFile *.html set ft=html.javascript
autocmd FileType html :setlocal shiftwidth=2 tabstop=2
autocmd FileType tex :setlocal shiftwidth=2 tabstop=2 noexpandtab
"autocmd FileType html <F8>
"autocmd Syntax c,cpp,vim,xml,html,xhtml setlocal foldmethod=indent
"autocmd Syntax c,cpp,vim,xml,html,xhtml,perl normal zR
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview


" CONFIGS
set number
set autoindent autoread autowrite
set formatoptions+=r
set foldmethod=indent
set foldlevel=99

set mouse=a

set smartindent
set tabstop=4 shiftwidth=4 expandtab

set ignorecase
set incsearch
set hlsearch
set wildmenu

set ssop-="options "
set ssop-="folds "
