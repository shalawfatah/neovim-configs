-- WORKSPACES LISTS
-- <leader>w TO CHECK REGISTERED WOKRSPACES

return {
  "ahmedkhalf/project.nvim",
  event = "VeryLazy",
  config = function()
    require("project_nvim").setup({
      patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "mix.exs" },
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      update_focused_file = {
        enable = true,
        update_root = true,
      },
    })
    require("telescope").load_extension("projects")
  end,
}
