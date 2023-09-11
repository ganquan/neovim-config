lua require('plugins')

""""""""""""""""""""""""""" Vista settings """""""""""""""""""""""""""""""""""""
let g:vista_sidebar_width = 50

let g:vista#renderer#icons = {
\   'member': '',
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

" Do not echo message on command line
let g:vista_echo_cursor = 0
" Stay in current window when vista window is opened
let g:vista_stay_on_open = 0

" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works for the kind renderer, not the tree renderer.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'nvim_lsp'

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
let g:vista_executive_for = {
  \ 'cpp': 'nvim_lsp',
  \ }

" Declare the command including the executable and options used to generate ctags output
" for some certain filetypes.The file path will be appened to your custom command.
" For example:
" let g:vista_ctags_cmd = {
"      \ 'haskell': 'hasktags -x -o - -c',
"      \ }

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']

"nnoremap <silent> <Leader>tl :<C-U>Vista!!<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"asyncrun""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" automatically open quickfix window when AsyncRun command is executed
" set the quickfix window 10 lines height.
let g:asyncrun_open = 10

" ring the bell to notify you job finished
let g:asyncrun_bell = 1
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg']

nnoremap <silent> <F4> :AsyncTask project-init<cr>
nnoremap <silent> <F6> :AsyncTask project-run<cr>
nnoremap <silent> <S-F6> :AsyncStop<cr>
nnoremap <silent> <F7> :AsyncTask project-build<cr>
nnoremap <silent> <F8> :AsyncTask project-clean<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
