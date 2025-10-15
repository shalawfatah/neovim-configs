-- EXPLORE, ADD, DELETE, RENAME BUFFERS LIKE VIM LINES
-- USE <leader>o TO OPEN THE EXPLORER, - TO MOVE ONE DIRECTORY UP
local opts = { noremap = true, silent = true, nowait = true }
local nv = { "n", "v" }

return {
  "stevearc/oil.nvim",
  event = "VeryLazy",
  opts = {
    view_options = {
      show_hidden = true, -- This enables showing hidden files
    },
  },
  keys = {
    { "<leader>o", ":Oil<CR>", opts, mode = nv }, -- FILE EXPLORING AND EDITING
  },
}
