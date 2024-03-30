-- UNDO USING TELESCOPE 

return {
  {
    "debugloop/telescope-undo.nvim",
    event = "VeryLazy",
    config = function()
      require("telescope").load_extension("undo")
    end,
  },
  {
    "tzachar/highlight-undo.nvim",
    opts = {},
  },
}
