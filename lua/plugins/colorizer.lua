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
  {
    "max397574/colortils.nvim",
    cmd = "Colortils",
    config = true,
  },
}
