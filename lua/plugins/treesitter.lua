-- TREESITTER HELPS WITH SYNTAX RECOGNITION FOR DIFFERENT LANGUAGES

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      highlight = { enable = true },
      modules = {},
      sync_install = false,
      ignore_install = {},
      indent = { enable = false }, -- Set to false to fix indentation issues
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "scss",
        "prisma",
        "markdown",
        "svelte",
        "graphql",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "python",
        "sql",
        "toml",
        "c",
        "php",
        "elixir",
        "heex",
        "eex",
      },
    })
  end,
}
