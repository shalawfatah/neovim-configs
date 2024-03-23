return {
  "gbrlsnchs/telescope-lsp-handlers.nvim",
  config = function()
    require("telescope").load_extension("lsp_handlers")
  end,
}
