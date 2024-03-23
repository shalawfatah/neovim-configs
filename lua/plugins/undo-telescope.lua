return {
  {
    "debugloop/telescope-undo.nvim",
    config = function()
      require("telescope").load_extension("undo")
    end,
  },
  {
    "tzachar/highlight-undo.nvim",
    opts = {},
  },
}
