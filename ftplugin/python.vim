"탭 및 들여쓰기 설정
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=100
set expandtab
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

"원래 탭이였던 것도 스페이스로 변경
autocmd FileType python retab

"컴파일러 설정
"set errorformat=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
"set makeprg=python
"nmap <C-e> :w<ENTER>:make %<cr>
"nmap <leader>r<space> :w<ENTER>:make %<space>

"Test
nmap <leader>to :w<cr>:!py.test test/%:t<cr>
nmap <leader>ta :w<cr>:!py.test<cr>

"Comment

vmap <leader>cc :s/^/\#/g<ENTER>:noh<ENTER>
vmap <leader>cn :s/^\#//g<ENTER>:noh<ENTER>
