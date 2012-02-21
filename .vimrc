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
noremap <c-w><c-t> :WMToggle <CR>

" tagbar config
let g:Tlist_WinWidth = 50
noremap <F3> :TagbarToggle <CR>
set tags=./tags;/
"set tags+=/usr/local/share/ctags/qt4
noremap <C-\> :tab split <CR> :exec("tag ".expand("<cword>")) <CR>
noremap <A-]> :vsp <CR> :exec("tag ".expand("<cword>")) <CR>


" KEYMAPPINGS
inoremap	kj	<Esc>
inoremap	kkj	<Esc>:w <CR>
"inoremap	<Left>	<NOP>
"inoremap	<Down>	<NOP>
"inoremap	<Up>	<Esc>:w <CR>
"inoremap	<Right>	<NOP>

noremap <F7> :set filetype=html <CR>
noremap <F9> :so ~/.vimrc <CR> :e <CR>
noremap <C-J> a <CR><Esc>k$

" <leader> additions
"sorts
noremap <leader>rv :g/fun\%[ction]!\= /,/endf\%[unction]/ s/$\n/@@@<CR> :'<,'>sort /fun=%[ction]!\=/<CR> :%s/@@@/\r/g<CR>
noremap <leader>rs :s/$\n/@@@<CR> :s/@@@snippet/\rsnippet/g<CR> :'<,'>sort<CR> :%s/@@@/\r/g<CR>

noremap <leader>rd :s/$\n/@@@<CR> :s/@@@def/\r/g<CR> :'<,'>sort<CR> :%s/@@@/\r/g<CR>
noremap <leader>rf :s/$\n/@@@<CR> :s/@@@function/\r/g<CR> :'<,'>sort<CR> :%s/@@@/\r/g<CR>
"buffer
noremap <leader>bc :Bclose! <CR>
noremap <leader>bf <C-W><C-L><C-W><C-C>gt <CR>
noremap <leader>bq :Bclose <CR>
"vim-fugitive
noremap <leader>ga :Gwrite <CR>
noremap <leader>gc :Gcommit <CR>
noremap <leader>gd :Gdiff <CR>
noremap <leader>go :Gread <CR>
noremap <leader>gb :Gblame <CR>
noremap <leader>gk :Git pull <CR>
noremap <leader>gj :Git push <CR>
noremap <leader>gm :Gmove 
noremap <leader>gp :Git pull <CR> :Git push <CR>
noremap <leader>gr :Gremove <CR>
noremap <leader>gs :Gstatus <CR>
"external cmds
noremap <leader>mt :!pdflatex % <CR>
noremap <leader>mm :!make <CR>
"option toggles
noremap <leader>on :set number! <CR>
noremap <leader>op :set paste! <CR>
noremap <leader>oh :set hlsearch! <CR>
noremap <leader>oc :set @/ = "" <CR>
"tabs
noremap <leader>td :tabnew % <CR>
noremap <leader>tn :tabnew <CR>
noremap <leader>tc :tabclose! <CR>
noremap <leader>tq :tabclose <CR>
noremap <leader>tm :tabmove 
noremap <leader>wc <C-W>c
"saving
noremap <leader>sc :w <CR> :tabclose <CR>
noremap <leader>st :w <CR>
noremap <leader>ss :wa <CR>
noremap <leader>sq :wqa <CR>
"quitting
noremap <leader>qc :qa! <CR>
noremap <leader>qq :qa <CR>
noremap <leader>qr :!rm % <CR> :tabclose <CR>
noremap <leader>qs :mksession! <CR>
noremap <leader>qt :q <CR>
noremap <leader>qw <C-W><C-C> <CR>


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
"set hlsearch
set wildmenu

set ssop-="options"
set ssop-="folds "
