-- CONNECTION BETWEEN LSP AND TELESCOPE

return {
  "gbrlsnchs/telescope-lsp-handlers.nvim",
  event = "VeryLazy",
  config = function()
    require("telescope").load_extension("lsp_handlers")
  end,
}
