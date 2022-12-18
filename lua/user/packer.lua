-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'ThePrimeagen/harpoon'
  use 'mbbill/undotree'
  use 'numToStr/Comment.nvim'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'nvim-lualine/lualine.nvim'
  use 'tpope/vim-sleuth'
  use 'lewis6991/gitsigns.nvim'
  use 'machakann/vim-highlightedyank'
  use 'christoomey/vim-system-copy'
  use 'p00f/nvim-ts-rainbow'
  use 'windwp/nvim-autopairs'
  use 'voldikss/vim-floaterm'
  use({ 'iamcco/markdown-preview.nvim', run = 'cd app && npm install', setup = function() vim.g.mkdp_filetypes = { 'markdown' } end, ft = { 'markdown' }, })
  use 'vimwiki/vimwiki'
  use 'preservim/nerdtree'

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
end)
