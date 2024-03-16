-- STATUS LINE IN NEOVIM TERMINAL
return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",
      },
    })
  end,
}
