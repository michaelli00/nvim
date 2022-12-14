local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.api.nvim_notify('Unable to find packer')
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  use "wbthomason/packer.nvim"                        -- Have packer manage itself
  use "nvim-lua/popup.nvim"                           -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim"                         -- Useful lua functions used ny lots of plugins
  use 'kyazdani42/nvim-web-devicons'                  -- Useful icons for nvim

  -- Colorschemes
  use 'ellisonleao/gruvbox.nvim'


  -- Vim Highlighted Yank
  use 'machakann/vim-highlightedyank'                 -- Highlight yanked text

  -- Vim System Copy
  use 'christoomey/vim-system-copy'                   -- Allow copying from vim into clipboard

  -- cmp plugins
  use "hrsh7th/nvim-cmp"                              -- The completion plugin
  use "hrsh7th/cmp-buffer"                            -- buffer completions
  use "hrsh7th/cmp-path"                              -- path completions
  use "hrsh7th/cmp-cmdline"                           -- cmdline completions
  use "saadparwaiz1/cmp_luasnip"                      -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"                          -- lsp completions
  use "hrsh7th/cmp-nvim-lua"                          -- lua config completion

  -- Snippets
  use "L3MON4D3/LuaSnip"                              -- Snippet engine
  use "rafamadriz/friendly-snippets"                  -- a bunch of snippets to use
  use "SirVer/ultisnips"

  -- LSP
  use "neovim/nvim-lspconfig"                         -- enable LSP
  use "williamboman/nvim-lsp-installer"               -- simple to use language server installer
  use "jose-elias-alvarez/null-ls.nvim"               -- for formatters and linters
  use "antoinemadec/FixCursorHold.nvim"               -- This is needed to fix lsp doc highlight

  -- Telescope
  use "nvim-telescope/telescope.nvim"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",                -- enable Treesitter
    run = ":TSUpdate",
  }
  use "p00f/nvim-ts-rainbow"                          -- rainbow parenthesis matching

  -- Autopairs
  use "windwp/nvim-autopairs"                         -- Autopairs, integrates with both cmp and treesitter

  -- Comment
  use "numToStr/Comment.nvim"                         -- Easily comment stuff
  use 'JoosepAlviste/nvim-ts-context-commentstring'   -- JSX aware commenting

  -- Git
  use "lewis6991/gitsigns.nvim"                       -- Git signs

  -- Nvim Tree
  use 'kyazdani42/nvim-tree.lua'                      -- Nvim Tree

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Floatterm
  use 'voldikss/vim-floaterm'                         -- Floatterm

  -- Which Key
  -- use "folke/which-key.nvim"                          -- Helps with keybind mappings

  -- Vimtex
  use 'lervag/vimtex'                                 -- Support LaTeX compilation in vim

  -- Impatient
  use 'lewis6991/impatient.nvim'                      -- Used to make nvim load faster

  -- Tetris :)
  use 'alec-gibson/nvim-tetris'                       -- Tetris


  -- Load on an autocommand event
  -- Matchup
  use {'andymass/vim-matchup', event = 'VimEnter'}    -- Useful for navigating matching text using '%' to language-specific words (e.g. for and while loops)

  -- Plugins can have post-install/update hooks
  -- Markdown Preview
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  -- Vim Wiki
  use 'vimwiki/vimwiki'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
