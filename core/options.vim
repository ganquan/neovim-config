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

nnoremap <silent><leader>1 <cmd>lua require("bufferline").go_to_buffer(1, true)<cr>
nnoremap <silent><leader>2 <cmd>lua require("bufferline").go_to_buffer(2, true)<cr>
nnoremap <silent><leader>3 <cmd>lua require("bufferline").go_to_buffer(3, true)<cr>
nnoremap <silent><leader>4 <cmd>lua require("bufferline").go_to_buffer(4, true)<cr>
nnoremap <silent><leader>5 <cmd>lua require("bufferline").go_to_buffer(5, true)<cr>
nnoremap <silent><leader>6 <cmd>lua require("bufferline").go_to_buffer(6, true)<cr>
nnoremap <silent><leader>7 <cmd>lua require("bufferline").go_to_buffer(7, true)<cr>
nnoremap <silent><leader>8 <cmd>lua require("bufferline").go_to_buffer(8, true)<cr>
nnoremap <silent><leader>9 <cmd>lua require("bufferline").go_to_buffer(9, true)<cr>
nnoremap <silent><leader>$ <cmd>lua require("bufferline").go_to_buffer(-1, true)<cr>


" }}}


" 快捷切换分屏 {{{
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}

" Set floaterm window foreground to gray once the cursor moves out from it
hi FloatermNC guifg=gray
