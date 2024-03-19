local key = vim.keymap.set
return {
  "rmagatti/goto-preview",
  config = true,
  key("n", "gp", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true }),
  key("n", "gpd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true }),
  key("n", "gpt", "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", { noremap = true }),
  key("n", "gpi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", { noremap = true }),
  key("n", "gpD", "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>", { noremap = true }),
}
