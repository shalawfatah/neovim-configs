-- :Refactor extract_block_to_file, extract, extract_block, extract_var and extract_to_file

return {
  "ThePrimeagen/refactoring.nvim",
  config = function()
    require("refactoring").setup({})
    require("telescope").load_extension("refactoring")
  end,
}
