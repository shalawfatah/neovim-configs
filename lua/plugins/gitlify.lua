-- GIT SIGNS AND HISTORY

return {
  { "tpope/vim-fugitive" },
  { "akinsho/git-conflict.nvim", version = "*", config = true },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = " ✢" },
          change = { text = " ≈" },
          delete = { text = " ✗" },
          topdelete = { text = " ₸" },
          changedelete = { text = " Ɖ" },
          untracked = { text = " ┆" },
        },
      })
    end,
  },
}
