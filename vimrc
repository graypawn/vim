set nocompatible "vi와호환성 무시. 

"Vundle Setting Begin
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Plugin Add
Plugin 'gmarik/Vundle.vim'
Plugin 'The-NERD-Tree'
Plugin 'taglist.vim'
"For Clojure
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-classpath' 
Plugin 'tpope/vim-fireplace'

"For Python
"Plugin 'klen/python-mode'
Plugin 'ironcamel/vim-script-runner'
Plugin 'davidhalter/jedi-vim'

call vundle#end() 
filetype plugin indent on    

"VISUAL===========
set number "행번호
syntax on "하이라이팅
set hlsearch
set showcmd

set laststatus=2 " 상태바 표시를 항상한다
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F

let mapleader = "," "<leader> 매핑

"Python Type 추가
au BufRead,BufNewFile *.py set filetype=python

"CTAGS & Taglist
set tags=./tags,tags
set tags+=../tags
nmap<F3> :Tlist<CR>
nmap <F4> :w<CR>:TlistUpdate<CR>


"NERDTree
nmap <F2> :NERDTreeToggle<CR>
"Test
nmap <C-e> :!echo %:p:s?euler?xx?
"vim-script-runner
let g:script_runner_key = '<C-e>'

colorscheme harlequin 
