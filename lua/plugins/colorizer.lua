-- COLOR HIGHLIGHTING
return {
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        "*",
      })
    end,
  },
  {
    "uga-rosa/ccc.nvim",
    config = true,
  },
}
