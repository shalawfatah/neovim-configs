-- FORMATTERS, LINTERS, COMPLETIONS
return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.completion.luasnip,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.hadolint, -- DOCKER LINTER
        null_ls.builtins.diagnostics.markdownlint,
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.diagnostics.phpcs,
        null_ls.builtins.diagnostics.proselint,
        null_ls.builtins.diagnostics.sqlfluff,
        null_ls.builtins.diagnostics.staticcheck,
        null_ls.builtins.diagnostics.vint,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.astyle, -- "arduino", "c", "cpp", "cs", "java"
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.pint,
        null_ls.builtins.formatting.shfmt,
        null_ls.builtins.formatting.sqlfmt,
        null_ls.builtins.hover.dictionary,
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
