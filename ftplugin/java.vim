set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set makeprg=javac
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#

"indent
set autoindent
set smartindent
set cinoptions+=j1

"Higlight, Indent
let java_mark_braces_in_parens_as_errors=1
let java_highlight_all=1
let java_highlight_debug=1
let java_ignore_javadoc=1
let java_highlight_java_lang_ids=1
let java_highlight_functions="style"
let java_minlines = 150

"Coments
vmap <leader>cc :s/^/\/\//g<ENTER>:noh<ENTER>
vmap <leader>cn :s/^\/\///g<ENTER>:noh<ENTER>

"Compile & Run
nmap <leader>rr :w<ENTER>:make %<cr>
nmap <leader>r<SPACE> :!java %:r<SPACE>
nmap <C-e> :!java %:r<cr>
