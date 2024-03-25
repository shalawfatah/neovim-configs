-- Open termianls in float: Ctrl + \, horizontal: Ctrl + h and vertical: Ctrl + v ways 

return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<c-\>]],
      direction = "float",
      float_opts = {
        border = "curved",
      },
    })
  end,
}
