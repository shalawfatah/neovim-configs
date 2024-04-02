-- BETTER UI FOR TELESCOPE 

return {
  "nvim-telescope/telescope-ui-select.nvim",
  event = "VeryLazy",
  config = function()
    require("telescope").setup({
      defaults = { file_ignore_patterns = { "node_modules", "dist" } },
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown({}),
        },
      },
    })
    require("telescope").load_extension("ui-select")
  end,
}
