-- COLOR HIGHLIGHTING
return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      "css",
      "html",
      "javascript",
      "typescript",
    })
  end,
}
