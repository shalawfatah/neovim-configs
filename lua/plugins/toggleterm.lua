-- OPEN TERMIANLS IN FLOAT: Ctrl + \, HORIZONTAL: Ctrl + h AND VERTICAL: Ctrl + v WAYS 

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
