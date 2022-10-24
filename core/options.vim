set shortmess=atI               " 关闭乌干达儿童信息
set nu                          " 打开行号
set cursorline                  " 光标行高亮
set expandtab                   " 用空格替换tab
set tabstop=4                   " 指定一个tab的字符宽度
set softtabstop=4               " 可以微调插入的空格数
set shiftwidth=4                " 普通模式下使用缩进插入或者删除的空格数
set hidden                      " 允许在未保存 buffer 的时候切换至另一个 buffer

" 切换buffer
" Leader Key Setup {{{
nmap <Leader><Tab> :bn<CR> "next buffer
nmap <Leader><S-Tab> :bp<CR> "previous buffer

nmap <leader>1 :bfirst<CR>
nmap <leader>2 :bfirst<CR>:bn<CR>
nmap <leader>3 :bfirst<CR>:2bn<CR>
nmap <leader>4 :bfirst<CR>:3bn<CR>
nmap <leader>5 :bfirst<CR>:4bn<CR>
" }}}


" 快捷切换分屏 {{{
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}

