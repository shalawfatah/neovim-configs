local opts = { noremap = true, silent = true }

return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<c-\>]],
      direction = "float",
      float_opts = {
        border = "curved",
      },
    })
  end,
  vim.keymap.set("n", "<C-h>", [[:ToggleTerm size=10 direction=horizontal name=horiz<CR>]], opts),
  vim.keymap.set("n", "<C-v>", [[:ToggleTerm size=45 direction=vertical name=vertic<CR>]], opts),
}
