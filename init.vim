source $HOME/.config/nvim/sets.vim
source $HOME/.config/nvim/plugin/floatterm.vim
source $HOME/.config/nvim/plugin/fzf.vim
source $HOME/.config/nvim/plugin/git.vim
source $HOME/.config/nvim/plugin/lsp.vim
source $HOME/.config/nvim/plugin/NERDTree.vim
source $HOME/.config/nvim/plugin/ripgrep.vim
source $HOME/.config/nvim/plugin/ultisnips.vim
source $HOME/.config/nvim/plugin/vimtex.vim
source $HOME/.config/nvim/plugin/vimspector.vim
source $HOME/.config/nvim/plugin/incsearch.vim

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'voldikss/vim-floaterm'
Plug 'machakann/vim-highlightedyank'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-system-copy'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug '9mm/vim-closer'
Plug 'preservim/nerdtree'
Plug 'lervag/vimtex'
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
" Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'haya14busa/incsearch.vim'

Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/async.vim'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-vim-lsp'
Plug 'roxma/nvim-yarp'
Plug 'mattn/vim-lsp-settings'
call plug#end()

colorscheme gruvbox
set bg=dark

"black background"
highlight Normal ctermbg=NONE
let g:gruvbox_transparent_bg = 1

"yellow line numbers"
highlight LineNr ctermfg=yellow

let mapleader = " "

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
