-- FORMATTERS

return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      svelte = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      json = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
      graphql = { "prettier" },
      lua = { "stylua" },
      toml = { "taplo" },
      sql = { "sqlfmt" },
      sh = { "shfmt" },
      dockerfile = { "prettier" },
      python = { "black" },
      php = { "prettier" },
      c = { "clang_format" },
      elixir = { "mix" },
      heex = { "mix" },
      eex = { "mix" },
      ["*"] = { "prettier" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback", -- Use LSP only if specialized formatter isn't available
    },
  },
  keys = {
    {
      "<leader>ft",
      function()
        require("conform").format({ async = true, lsp_format = "fallback" })
      end,
      desc = "Format document",
    },
  },
}
