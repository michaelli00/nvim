" syntax on
filetype plugin on
" remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

call plug#begin('~/.config/nvim/plugged/')
" UI
Plug 'morhetz/gruvbox'
Plug 'nvim-lualine/lualine.nvim'
Plug 'voldikss/vim-floaterm'

" Quality of Life
Plug 'haya14busa/incsearch.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'christoomey/vim-system-copy'
Plug 'tpope/vim-commentary'
Plug '9mm/vim-closer'

" Navigation
Plug 'preservim/nerdtree'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" lsp/treesitter
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}


" git
Plug 'tpope/vim-fugitive'

" snippets
Plug 'SirVer/ultisnips'

" Notetaking
Plug 'lervag/vimtex'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()

"gruvbox dark with black background"
colorscheme gruvbox
set bg=dark
highlight Normal ctermbg=NONE

"yellow line numbers"
highlight LineNr ctermfg=cyan

let mapleader = " "

source $HOME/.config/nvim/sets.vim
source $HOME/.config/nvim/mappings.vim

source $HOME/.config/nvim/plugin/completion.vim
source $HOME/.config/nvim/plugin/gruvbox.vim
source $HOME/.config/nvim/plugin/lspconfig.vim
source $HOME/.config/nvim/plugin/lspsaga.vim
source $HOME/.config/nvim/plugin/lualine.lua
source $HOME/.config/nvim/plugin/telescope.vim
source $HOME/.config/nvim/plugin/treesitter.vim
source $HOME/.config/nvim/plugin/ultisnips.vim
source $HOME/.config/nvim/plugin/vimtex.vim
source $HOME/.config/nvim/plugin/vimmarkdown.vim
source $HOME/.config/nvim/plugin/web-devicons.vim
