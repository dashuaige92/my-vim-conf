" On OSX
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("pbpaste"))<CR>p

call pathogen#infect()
"call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax on
filetype plugin indent on
" vim-colors-solarized setup
"if has('gui_running')
set background=dark
"else
"set background=""
"endif
"colorscheme solarized

" PLUGIN CONFIGS AND MAPPINGS
set runtimepath-=~/.vim/bundle/minibufexpl
set runtimepath-=~/.vim/bundle/vim-autocomplpop
set runtimepath-=~/.vim/bundle/supertab
"set runtimepath-=~/.vim/bundle/vim-persist

" vim-autocomplpop config
let g:acp_ignorecaseOption = 0
let g:acp_behaviorKeywordIgnores = ['if', 'do', 'end', 'nil']

" zencoding config
let g:user_zen_leader_key = '<C-z>'

" multiselect config
"noremap <C-c> :MSClear <CR>
"noremap <C-o> :MSExecNormalCmd 

" NERDTree config
let g:NERDTreeIgnore = ['\.pyc$', '\.aux']
let g:nerdtree_tabs_open_on_console_startup = 1
let g:NERDTreeShowLineNumbers = 1
command! -nargs=1 E wincmd h | execute 'normal ' . <args> . 'G<enter>'
command! -nargs=1 T wincmd h | execute 'normal ' . <args> . 'Gt'

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
noremap <C-w><C-t> :WMToggle <CR>

" tagbar config
let g:Tlist_WinWidth = 40
let g:tagbar_width = 30
set tags=./tags;/
"set tags+=/usr/local/share/ctags/qt4
noremap <C-\> :tab split <CR> :exec("tag ".expand("<cword>")) <CR>
noremap <A-]> :vsp <CR> :exec("tag ".expand("<cword>")) <CR>
autocmd BufRead * :TagbarOpen

" persist config
set updatetime=1000
let g:persist_width = 28
autocmd BufRead * if exists(':PersistOpen') | :PersistOpen

" indent/html.vim config
let g:html_indent_inctags = "html,body,head,tbody,template"

" vim-indent-plugin
let g:indent_guides_enable_on_vim_startup = 1

let vimrplugin_screenplugin = 0


" KEYMAPPINGS
" noremap slots: RU|X
" noremap backup slots: IF HLM

noremap <F3> :TagbarClose <CR> :PersistClose <CR>
noremap <F4> :TagbarOpen <CR> :PersistOpen <CR>
noremap <F5> :NERDTreeToggle <CR>
noremap <F7> :set filetype=html <CR>

"noremap  _       :bp<CR>
"noremap  +       :bn<CR>
"noremap  -       O<Esc>jl
noremap =- gg=G`'
noremap  -       _
noremap  _       :bp<CR>
noremap  +       :bn<CR>
noremap  <Tab>   <C-^>
noremap  )       gt
noremap  (       gT
noremap  <Space> zz
noremap  <CR> gg
imap     <C-\>   <Esc>o
inoremap <C-'>   <CR>
inoremap lh      <Esc>
inoremap kj      <Esc>:w<CR>
noremap  K       i<CR><Esc>

map [[ ?{<CR>w99[{
map ][ /}<CR>b99]}
map ]] j0[[%/{<CR>
map [] k$][%?}<CR>
"noremap     K   a <CR><Esc>k$
noremap     <C-j>   5j
noremap     <C-k>   5k
noremap     <C-h>   :5winc < <CR>
noremap     <C-l>   :5winc > <CR>

" <leader> additions
"file formatting
noremap <leader>ah :%s/:\(\w\+\)\s*=>\s*\("[^"]*"\\|'[^']*'\\|{[^}]*}\\|\[[^\]]*\]\\|:\?\w\+\)/\1: \2/g<CR>
vnoremap <leader>ar c<Esc>msjmtP'tk :'s+1,.g/^/m 's<CR>kdd
noremap <leader>as :%s/\s*\r\?$<CR>
noremap <leader>af :%s/ﬁ/fi/g<CR>
noremap <leader>a' :%s/"/'/gc<CR>
"buffer
noremap <leader>bc :Bclose! <CR>
noremap <leader>bf <C-w><C-l><C-w><C-c>gt <CR>
noremap <leader>bq :Bclose <CR>
"vim-fugitive
noremap <leader>g2 :diffget //2 <CR> diffupdate <CR>
noremap <leader>g3 :diffget //3 <CR> diffupdate <CR>
noremap <leader>ga :Gwrite <CR>
noremap <leader>gb :Gblame <CR>
noremap <leader>gc :Gcommit <CR>
noremap <leader>gd :Gdiff <CR>
noremap <leader>ghj :Git push heroku master<CR>
noremap <leader>ghk :Git pull heroku master<CR>
noremap <leader>gj :Git push origin master<CR>
noremap <leader>gk :Git pull origin master<CR>
noremap <leader>gm :Gmove 
noremap <leader>go :Gread <CR>
noremap <leader>go :only <CR> :NERDTree <CR>
noremap <leader>gp :Git pull <CR> :Git push <CR>
noremap <leader>gr :Gremove <CR>
noremap <leader>gs :Gstatus <CR>
"external cmds
noremap <leader>mc :!chmod +x %<CR>
noremap <leader>mj :!javac % <CR>
noremap <leader>mm :!make <CR>
noremap <leader>mp :!python % <CR>
noremap <leader>mt :!pdflatex "%" <CR>
noremap <leader>mx :!./%<CR>
"option toggles
noremap <leader>oc :set @/ = "" <CR>
noremap <leader>oh :set hlsearch! <CR>
noremap <leader>on :set number! <CR>
noremap <leader>op :set paste! <CR>
"quitting
noremap <leader>qc :qa! <CR>
noremap <leader>qq :qa <CR>
noremap <leader>qr :!rm % <CR> :tabclose <CR>
noremap <leader>qs :mksession! <CR>
noremap <leader>qt :q <CR>
noremap <leader>qw <C-w><C-c> <CR>
"sorts and restructuring
"noremap <leader>rs :s/\(snippet.*\)\n/\1@@@/<CR> 
"noremap <leader>rs :s/\n\(^[^snippet].*\)/@@@\1/<CR> :'<,'>sort<CR> :'<,'>s/@@@/\r/g<CR>
noremap <leader>rd :s/$\n/@@@<CR> :s/@@@def/\r/g<CR> :'<,'>sort<CR> :%s/@@@/\r/g<CR>
noremap <leader>rf :s/$\n/@@@<CR> :s/@@@function/\r/g<CR> :'<,'>sort<CR> :%s/@@@/\r/g<CR>
noremap <leader>rs :s/$\n/@@@<CR> :s/@@@snippet/\rsnippet/g<CR> :'<,'>sort<CR> :%s/@@@/\r/g<CR>
noremap <leader>rv :g/fun\%[ction]!\= /,/endf\%[unction]/ s/$\n/@@@<CR> :'<,'>sort /fun=%[ction]!\=/<CR> :%s/@@@/\r/g<CR>
"saving
noremap <leader>sc :w <CR> :tabclose <CR>
noremap <leader>ss :wa <CR>
noremap <leader>st :w <CR>
noremap <leader>sq :wqa <CR>
"tabs and tab spacing
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()
noremap <leader>tb :tab ball <CR>
noremap <leader>tc :tabclose! <CR>
noremap <leader>td :tabnew % <CR>
noremap <leader>tm :tabmove 
noremap <leader>tn :tabnew <CR>
noremap <leader>tq :tabclose <CR>
noremap <leader>tt :setlocal shiftwidth <CR>
noremap <leader>t2 :setlocal shiftwidth=2 tabstop=2 <CR>
noremap <leader>t4 :setlocal shiftwidth=4 tabstop=4 <CR>
noremap <leader>t8 :setlocal shiftwidth=8 tabstop=8 <CR>
"tabular.vim
vnoremap <leader>=g :Tab custom_tabs<CR>
vnoremap <leader>=~ :Tab custom_tabs<CR>
vnoremap <leader>=3 :Tab /#<CR>
vnoremap <leader>=- :Tab space_align<CR>
vnoremap <leader>=a :Tab ampersand_align<CR>
vnoremap <leader>== :Tab equals_align<CR>
vnoremap <leader>=h :Tab hash_colon_align<CR>
vnoremap <leader>=c :Tab comma_align<CR>
vnoremap <leader>=C :Tab comma_align_all<CR>
vnoremap <leader>=n :Tab colon_align<CR>
vnoremap <leader>=d :Tab dotted_method_chain<CR>
vnoremap <leader>=f :Tab first_line_equals<CR>
"plugin shortcuts
noremap <leader>pc :CoffeeCompile watch vert<CR>

" command-line remappings
cno $h e ~/
cno $d e ~/Desktop/
cno $$ e ./


" AUTOCMDS
autocmd Filetype markdown syntax match Comment /\%^---\_.\{-}---$/

au BufRead,BufNewFile .bash* set ft=sh
au BufRead,BufNewFile *.php set ft=php.html
au BufRead,BufNewFile *.js set ft=javascript.html
au BufRead,BufNewFile *.json set ft=javascript
au BufRead,BufNewFile *.html set ft=html.javascript
au BufRead,BufNewFile *.erb set ft=eruby.html.javascript
au BufRead,BufNewFile *.ejs* set ft=jst.html

au BufRead,BufNewFile *.rabl set ft=ruby
au BufRead,BufNewFile Gemfile* set ft=ruby
au BufRead,BufNewFile Guardfile set ft=ruby

au FileType ruby :setlocal shiftwidth=2 tabstop=2
au FileType jst :setlocal shiftwidth=2 tabstop=2
au FileType tex :setlocal shiftwidth=2 tabstop=2 noexpandtab
"autocmd Syntax c,cpp,vim,xml,html,xhtml setlocal foldmethod=indent

au! FileType python setl nosmartindent

" CONFIGS
set colorcolumn=80
set number
set autoindent
set autoread 
"set autowrite
set hidden
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
set completeopt+=longest
set wildmenu
set wildmode=list:longest,full
set tagstack

" session config
set ssop-="options "
set ssop-="folds "

"set nobackup
set directory=~/.vim/swap


if exists("+showtabline")
     function! MyTabLine()
         let s = ''
         let t = tabpagenr()
         let i = 1
         while i <= tabpagenr('$')
             let buflist = tabpagebuflist(i)
             let winnr = tabpagewinnr(i)
             let s .= '%' . i . 'T'
             let s .= (i == t ? '%1*' : '%2*')
             let s .= ' '
             let s .= i . ')'
             let s .= ' %*'
             let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
             let file = bufname(buflist[winnr - 1])
             let file = fnamemodify(file, ':p:t')
             if file == ''
                 let file = '[No Name]'
             endif
             let s .= file
             let i = i + 1
         endwhile
         let s .= '%T%#TabLineFill#%='
         let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
         return s
     endfunction
     set stal=2
     set tabline=%!MyTabLine()
endif

if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif
