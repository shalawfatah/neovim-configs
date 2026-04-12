-- EXPLORE, ADD, DELETE, RENAME BUFFERS LIKE VIM LINES
-- show_hidden = true TO SHOW HIDDEN FILES
-- <leader>o TO TRIGGER FILE EXPLORER & EDITOR

local opts = { noremap = true, silent = true, nowait = true }
local nv = { "n", "v" }

return {
  "stevearc/oil.nvim",
  event = "VeryLazy",
  opts = {
    view_options = {
      show_hidden = true,
    },
  },
  keys = {
    { "<leader>o", ":Oil<CR>", opts, mode = nv },
  },
}
