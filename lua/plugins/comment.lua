-- `gcc` - Toggles the current line using linewise comment
-- `gbc` - Toggles the current line using blockwise comment

return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup({
      toggler = { line = "<leader>/" },
      opleader = { line = "<leader>/" },
    })
  end,
}
