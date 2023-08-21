return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        mode = "tabs",
        offsets = {
          {filetype = "NvimTree"}
        },
        highlights = {
          buffer_selected = {
            italic = false
          },
          indicator_selected = {
            fg = {attribute = "fg", highlight = "Function"},
            italic = false
          }
        },
        -- Mouse mode is disabled so we can"t interact with the close iconanyways
        buffer_close_icon = ""
      }
    },
  }
}
