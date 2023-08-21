return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true
      vim.opt.background = "dark"
      vim.cmd.colorscheme("gruvbox")

      vim.cmd.highlight("LineNr guifg=yellow")
      vim.cmd.highlight("CursorLineNr guifg=cyan")
    end,
  },
}
