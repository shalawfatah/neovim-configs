return {
  "toppair/peek.nvim",
  event = { "VeryLazy" },
  build = "deno task --quiet build:fast",
  config = function()
    require("peek").setup()
    vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
    vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    vim.keymap.set("n", "<leader>md", "<cmd>PeekOpen<CR>", { desc = "Markdown Preview Open" })
    vim.keymap.set("n", "<leader>mx", "<cmd>PeekClose<CR>", { desc = "Markdown Preview Close" })
  end,
}
