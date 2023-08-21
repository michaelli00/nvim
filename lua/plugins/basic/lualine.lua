return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "gruvbox",
        icons_enabled = true,
        component_separators = "|",
        section_separators = "",
        disabled_filetypes = {
          statusline = {"NvimTree"}
        }
      }
    },
    config = function()
      -- lualine already shows mode
      vim.opt.showmode = false
    end,
  },
}
