return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
      },
    },
    config = function()
      require("telescope").setup({
        -- options
      })
    end,
  },
  { "nvim-telescope/telescope-symbols.nvim" },
  { "debugloop/telescope-undo.nvim" },
  { "gbrlsnchs/telescope-lsp-handlers.nvim" },
  { "ghassan0/telescope-glyph.nvim" },
  {
    "tzachar/highlight-undo.nvim",
    opts = {},
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
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
      require("telescope").load_extension("undo")
      require("telescope").load_extension("file_browser")
      require("telescope").load_extension("lsp_handlers")
      require("telescope").load_extension("glyph")
    end,
  },
}
