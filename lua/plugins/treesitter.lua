-- TREESITTER HELPS WITH SYNTAX RECOGNITION FOR DIFFERENT LANGUAGES 

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = {"BufReadPre", "BufNewFile"},
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
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
        "go",
        "sql",
        "toml",
      }
    })
  end,
}
