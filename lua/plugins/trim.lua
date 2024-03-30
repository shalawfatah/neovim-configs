-- TRIM TRAILING SPACE, FIRST AND LAST UNUSED LINE 
-- WORKS WITH KEYBINDING <leader>tr

return {
  "cappyzawa/trim.nvim",
  event = "VeryLazy",
  config = function()
    require("trim").setup({
      trim_on_write = false,
    })
  end
}
