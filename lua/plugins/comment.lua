-- COMMENTING AND COMMENTING OUT
-- `gcc` TOGGLE CURRENT LINE COMMENT, `gbc` TOGGLE CURRENT BLOCK COMMENT

return {
  "numToStr/Comment.nvim",
  config = function()
    local opts = {
      toggler = { line = "<leader>/" },
      opleader = { line = "<leader>//" },
    }
    require("Comment").setup(opts)
  end,
}
