-- AUTO SAVE FUNCTIONALITY

return {
  "okuuva/auto-save.nvim",
  cmd = "ASToggle",
  keys = {
    { "<leader>as", ":ASToggle<CR>", desc = "Toggle auto-save" },
  },
  event = { "InsertLeave", "TextChanged" },
  opts = {
    enabled = false,
  },
}
