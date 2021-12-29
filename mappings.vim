"space space exits out of insert mode"
imap <leader><SPACE> <ESC>

"take visual lines and move then up or down"
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"tab swap"
nnoremap <leader><Tab> <C-^>

"window split movement"
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

"window resize"
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

"yank rest of line"
nnoremap Y y$

"recenter while searching"
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z
