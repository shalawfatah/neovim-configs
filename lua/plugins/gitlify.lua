-- LazyGit, & GIT SIGNS

return {
  {
    "kdheepak/lazygit.nvim",
    event = "VeryLazy",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = " +" },
          change = { text = " ~" },
          delete = { text = " ✗" },
          topdelete = { text = " *" },
          changedelete = { text = " ≈" },
          untracked = { text = " ┆" },
        },
      })
    end,
  },
}
