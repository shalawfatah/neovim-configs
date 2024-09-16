return {
  -- Gitsigns for Git integration in Neovim
  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    keys = {
      { "n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", opts }, -- Show Git line commit owner
    },
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

  -- LazyGit for Git management
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    keys = {
      { "<C-z>", "<cmd>LazyGit<cr>", desc = "Open LazyGit" },
    },
  },
}
