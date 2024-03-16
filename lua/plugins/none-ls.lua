return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.completion.spell,
        null_ls.builtins.formatting.pg_format,
        null_ls.builtins.formatting.phpcbf,
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.diagnostics.phpcs,
        null_ls.builtins.diagnostics.sqlfluff,
        null_ls.builtins.hover.dictionary,
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
