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
let g:NERDTreeIgnore = ['\.pyc$', '\.aux']
let g:nerdtree_tabs_open_on_console_startup = 1
let g:NERDTreeShowLineNumbers = 1
noremap <F4> :NERDTreeToggle <CR>

" vim-fugitive config
autocmd BufReadPost fugitive://* set bufhidden=delete
set statusline=%<%f\ %n\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" minibufexpl.vim config
let g:miniBufExplModSelTarget = 1
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplModSelTarget = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplVSplit = 25
let g:miniBufExplSplitBelow=1
noremap <c-w><c-t> :WMToggle<CR>

" tagbar config
let g:Tlist_WinWidth = 50
noremap <F3> :TagbarToggle <CR>
set tags=./tags;/
"set tags+=/usr/local/share/ctags/qt4
noremap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
noremap <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>


" KEYMAPPINGS
inoremap	kj	<Esc>
inoremap	kkj	<Esc>:w<CR>
"inoremap	<Left>	<NOP>
"inoremap	<Down>	<NOP>
"inoremap	<Up>	<Esc>:w<CR>
"inoremap	<Right>	<NOP>
inoremap    <A-S>   <Esc>:wa<CR>

"noremap <F5> :ConqueTermTab python manage.py runserver 0.0.0.0:8000 <CR>
":set pastetoggle=<F6>
noremap <F7> :set filetype=html <CR>
noremap <F9> :so ~/.vimrc <CR> :e<CR>
noremap <C-J> a<CR><Esc>k$

" sort
"noremap <leader>rs :s/\(snippet.*\)\n/\1@@@/<CR> 
noremap <leader>rd :s/\n\(^[^def].*\)/@@@\1/<CR> :'<,'>sort<CR> :'<,'>s/@@@/\r/g<CR>
noremap <leader>rf :s/\n\(^[^function].*\)/@@@\1/<CR> :'<,'>sort<CR> :'<,'>s/@@@/\r/g<CR>
noremap <leader>rs :s/\n\(^[^snippet].*\)/@@@\1/<CR> :'<,'>sort<CR> :'<,'>s/@@@/\r/g<CR>

noremap <leader>g2 :diffget //2 <CR> diffupdate <CR>
noremap <leader>g3 :diffget //3 <CR> diffupdate <CR>
noremap <leader>gd :Gdiff <CR>
noremap <leader>go :only <CR> :NERDTree <CR>

" <leader> additions
noremap <leader>mm :!chmod +x %<CR>
noremap <leader>mt :!pdflatex %<CR>
noremap <leader>mx :!./%<CR>
noremap <leader>op :set paste!<CR>
noremap <leader>on :set number!<CR>

noremap <leader>qq :qa!<CR>
noremap <leader>qs :mksession<CR>:wqa<CR>
noremap <leader>sc :w<CR>:tabclose<CR>
noremap <leader>sq :wqa<CR>
noremap <leader>ss :wa<CR>

noremap <leader>tb :Bclose<CR>
noremap <leader>tc :tabclose<CR>
noremap <leader>td :tabnew %<CR>
noremap <leader>tm :tabmove 
noremap <leader>tn :tabnew<CR>


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
highlight Folded guibg=black guifg=grey

set mouse=a

set smartindent
set tabstop=4 shiftwidth=4 expandtab

set smartcase
set incsearch
"set hlsearch
set wildmenu

" session config
set ssop-="options "
set ssop-="folds "

"set nobackup
set directory=~/.vim/swap
