-- LazyGit, GIT SIGNS AND LOGS

return {
  {
    "kdheepak/lazygit.nvim",
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
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = " +" },
          change = { text = " ~" },
          delete = { text = " x" },
          topdelete = { text = " *" },
          changedelete = { text = " ≈" },
          untracked = { text = " ┆" },
        },
      })
    end,
  },
}
