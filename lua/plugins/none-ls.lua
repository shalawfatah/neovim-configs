-- FORMATTERS, LINTERS, COMPLETIONS

return {
  "nvimtools/none-ls.nvim",
  event = "VeryLazy",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.completion.luasnip,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.hover.dictionary,
      },
    })
  end,
}
