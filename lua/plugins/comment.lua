-- COMMENTING AND COMMENTING OUT 
-- `gcc` TOGGLE CURRENT LINE COMMENT, `gbc` TOGGLE CURRENT BLOCK COMMENT 

return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup({
      toggler = { line = "<leader>/" },
      opleader = { line = "<leader>/" },
    })
  end,
}
