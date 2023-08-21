return {
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      -- disable netrw
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      require("nvim-tree").setup({
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
      })
    end,
    keys = {
      { "<leader>e", "<cmd>NvimTreeFindFile<cr>" },
    }
  }
}
