return {
  'nvim-lua/plenary.nvim',                          -- Used by several other plugins

  ---- Lsp -----

  ---- Navigation -----
  {
    'nvim-telescope/telescope.nvim',                -- File navigation
    branch = '0.1.x',
    dependencies = {
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      'nvim-telescope/telescope-ui-select.nvim',
    },
    config = function() require('config/telescope') end,
  },
  'preservim/nerdtree',                             -- File Tree
  'andymass/vim-matchup',                           -- Match sets of matching sets using %
  'airblade/vim-rooter',                            -- Change working directory to project root of file
   {
    'folke/trouble.nvim',                           -- List of diagnostics
    config = function()
      require("trouble").setup({
        mode = "document_diagnostics"
      })
    end
  },
  {
    'simrat39/symbols-outline.nvim',                -- Generate symbol tree
    config = function()
      require("symbols-outline").setup {
        auto_close = true,
      }
    end
  },

  ---- Formatting ----
  'tpope/vim-commentary',                           -- Comment code
  'godlygeek/tabular',                              -- Align text based on regex expression
  'tpope/vim-sleuth',                               -- Autodetect tab spacing in fil

  ---- UI ----
  {
    'ellisonleao/gruvbox.nvim',                     -- Colorscheme
    config = function()
      vim.cmd([[colorscheme gruvbox]])
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup {
        options = { theme = 'gruvbox' },
      }
    end
  },
  {
    'm4xshen/smartcolumn.nvim',                     -- Only show color column when needed
    opts = {
      colorcolumn = '100',
      disabled_filetypes = { 'help', 'text', 'markdown', 'lua' }
    }
  },
  {
    'gelguy/wilder.nvim',                           -- Better wildmenu
    config = function() require('config/wilder') end,
  },
  {
    'j-hui/fidget.nvim',                            -- UI for loading lsp
    config = function ()
      require('fidget').setup()
    end
  },
  {
    'folke/which-key.nvim',                         -- Which key help menu
    config = function()
      require("which-key").setup()
    end
  },


  ---- Tmux ----
  {
    'christoomey/vim-tmux-navigator',               -- Tmux-Nvim integration
    lazy = false,
  },
}
