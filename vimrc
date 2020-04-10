" vim: sts=2:sw=2
scriptencoding utf-8
syntax on
filetype plugin indent on
set number
set visualbell t_vb=
set colorcolumn=79
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set listchars=tab:→→,trail:·,nbsp:·,precedes:«,extends:»
set nolist
set backspace=indent,eol,start
set encoding=utf-8
set termencoding=utf-8
set exrc
set secure
set scrolloff=5
set wrap
set laststatus=2
set statusline=%f%m\ %y\ %l/%L:%c
set nofixeol

colorscheme macvim

if has("win32")
  set dir=$HOME\vimfiles\tmp\
  set backupdir=$HOME\vimfiles\tmp\
else
  set dir=$HOME/.vim/tmp/
  set backupdir=$HOME/.vim/tmp/
end

if has('gui_running')
  set columns=110
  set lines=33
  set guioptions-=T
  set guioptions-=m
end

if has('gui_gtk3')
  set guifont=Cascadia\ Mono\ 10
  set background=dark
end

if has('gui_macvim')
  set guifont=Menlo:h13
end

if has('gui_win32')
  set guifont=Cascadia_Mono:h10,Consolas:h10
end

if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
end

let g:NERDTreeDirArrows = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinPos = "right"
let g:NERDTreeAutoDeleteBuffer = 1

let g:gitgutter_enabled = 0

let mapleader = ','
map <Leader>l :set list!<CR>
map <Leader>n :set number!<CR>
map <Leader>w :set wrap!<CR>
map <Leader>s :set spell!<CR>
map <Leader>/ :NERDTreeToggle<CR>
map <Leader>f :NERDTreeFind<CR>
map <Leader>g :GitGutterToggle<CR>
if has('terminal')
  map <Leader>t :terminal<CR>
endif

inoremap <Up>       <NOP>
inoremap <Down>     <NOP>
inoremap <Left>     <NOP>
inoremap <Right>    <NOP>
inoremap <PageUp>   <NOP>
inoremap <PageDown> <NOP>
inoremap <Home>     <NOP>
inoremap <End>      <NOP>
noremap  <Up>       <NOP>
noremap  <Down>     <NOP>
noremap  <Left>     <NOP>
noremap  <Right>    <NOP>
noremap  <PageUp>   <NOP>
noremap  <PageDown> <NOP>
noremap  <Home>     <NOP>
noremap  <End>      <NOP>

au BufNewFile,BufRead *.thrift setlocal filetype=thrift
au BufNewFile,BufRead *.m set filetype=objc
au BufNewFile,BufRead *.mm set filetype=objcpp
