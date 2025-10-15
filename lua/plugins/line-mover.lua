-- MOVES LINES, BLOCKS OF CODE UP AND DOWN
-- LINE [normal mode] alt + Up/Down ARROW, BLOCK [visual mode] alt + Up/Down ARROW

local opts = { noremap = true, silent = true, nowait = true } -- OPTIONS FOR KEYBINDINGS

return {
  "hinell/move.nvim",
  event = "VeryLazy",
  keys = {
    { "<A-Down>", ":MoveLine 1<CR>", opts, mode = "n" }, -- MOVE LINE DOWN
    { "<A-Up>", ":MoveLine -1<CR>", opts, mode = "n" }, -- MOVE LINE UP
    { "<A-Down>", ":MoveBlock 1<CR>", opts, mode = "x" }, -- MOVE BLOCK DOWN (VISUAL MODE)
    { "<A-Up>", ":MoveBlock -1<CR>", opts, mode = "x" }, -- MOVE BLOCK UP (VISUAL MODE)
    { "<A-Left>", ":MoveWord -1<CR>", opts, mode = "n" }, -- MOVE WORD LEFT
    { "<A-Right>", ":MoveWord 1<CR>", opts, mode = "n" }, -- MOVE WORD RIGHT
  },
}
