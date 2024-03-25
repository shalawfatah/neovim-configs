-- Trim trailing space, first and last unused line 
-- Works with keybinding <leader>tr

return {
  "cappyzawa/trim.nvim",
  config = function()
    require("trim").setup({
      trim_on_write = false,
    })
  end
}
