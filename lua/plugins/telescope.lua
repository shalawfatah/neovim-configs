-- TELESCOPE FOR BETTER NAVIGATION UI

local opts = { noremap = true, silent = true, nowait = true }

return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    event = "VeryLazy",
    keys = {
      { "<C-p>",      ":Telescope find_files<CR>",     opts, mode = "n" }, -- SHOW DIR & FILES IN THE PROJECT
      { "<leader>lg", ":Telescope live_grep<CR>",      opts, mode = "n" }, -- LIVE SEARCH IN ENTIRE PROJECT
      { "<leader>fw", ":Telescope grep_string<CR>",    opts, mode = "n" }, -- FIND WORD
      { "<leader>f",  ":Telescope buffers<CR>",        opts, mode = "n" }, -- SHOW OPEN BUFFERS
      { "<leader>h",  ":Telescope help_tags<CR>",      opts, mode = "n" }, -- SHOW HELP TAGS
      { "<leader>u",  ":Telescope undo<CR>",           opts, mode = "n" }, -- SHOW UNDO TREE
      { "<leader>w",  ":Telescope projects<CR>",       opts, mode = "n" }, -- SHOW PROJECTS
      { "<leader>y",  ":Telescope neoclip<CR>",        opts, mode = "n" }, -- SHOW YANK TREE
      { "<leader>ld", ":Telescope diagnostics<CR>",    opts, mode = "n" }, -- SHOW ALL LINTING ERRORS
      { "<leader>rf", ":Telescope lsp_references<CR>", opts, mode = "n" }, -- WHERE IS THE CODE REFERENCED
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build =
        "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
      },
    },
    config = function()
      require("telescope").setup({})
    end,
  },
}
