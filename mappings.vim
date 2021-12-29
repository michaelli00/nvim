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

"floaterm
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'

"incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)

"nerdtree
nnoremap <leader>t :NERDTreeFind<CR>

"telescope
nnoremap <leader>f :Telescope find_files<CR>
nnoremap <Leader>rg :Telescope live_grep<CR>
nnoremap <Leader>b :Telescope buffers<CR>
