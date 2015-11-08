set expandtab

autocmd FileType clojure retab

"vim-clojure-static의 구문 강조 기능이 한번에 처리할 최대 행수
""높은 갚일수록 긴 함수를 만났을 때 처리시간이 오래걸린다.
"0으로 설정하면 제한없이 끝까지 처리.
let g:clojure_maxlines=200

nmap <C-e> :Eval<ENTER>
imap <C-e> <ESC>:Eval<ENTER>
nmap <leader>rr cqc

vnoremap <leader>cc :s/^/\;/g<ENTER>:noh<ENTER>
vnoremap <leader>cn :s/^\;//g<ENTER>:noh<ENTER>

"debug script
vnoremap ,db di(dbg<space>)<ESC><left>p

