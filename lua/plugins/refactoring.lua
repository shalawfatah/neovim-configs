-- :Refactor extract_block_to_file, extract, extract_block, extract_var and extract_to_file
-- :lua require("refactoring").select_refactor()
local key = vim.keymap.set
local duo = {"n", "x"}
local opts = {noremap = true, silent = true}

return {
  "ThePrimeagen/refactoring.nvim",
  config = function()
    require("refactoring").setup({})
    require("telescope").load_extension("refactoring")
  end,
  key(duo, "<leader>rr", [[:lua require('telescope').extensions.refactoring.refactors()<CR>]], opts)
}
