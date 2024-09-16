-- EXPLORE, ADD, DELETE, RENAME BUFFERS LIKE VIM LINES
-- USE <leader>o TO OPEN THE EXPLORER, - TO MOVE ONE DIRECTORY UP 

local opts = { noremap = true, silent = true, nowait = true }
local nv = { "n", "v" }

return {
  "stevearc/oil.nvim",
  event = "VeryLazy",
  config = true,
  keys = {
    { "<leader>o", ":Oil<CR>", opts, mode = nv },  -- FILE EXPLORING AND EDITING
  },
}
