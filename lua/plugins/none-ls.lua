-- FORMATTERS, LINTERS, COMPLETIONS
return {
  "nvimtools/none-ls.nvim",
  event = "VeryLazy",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.completion.luasnip,
        null_ls.builtins.formatting.prettier.with({
          fileTypes = {
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
            "sql",
            "toml",
            "c",
            "php",
            "elixir",
            "heex",
            "eex",

          }
        }),
        null_ls.builtins.hover.dictionary,
      },
    })

    -- Set up keybinding for formatting
    vim.api.nvim_set_keymap(
      "n",                                             -- Normal mode
      "<leader>ft",                                    -- Keybinding: <leader>ft
      ":lua vim.lsp.buf.format({ async = true })<CR>", -- Format the document
      { noremap = true, silent = true }                -- Options
    )
  end,
}
