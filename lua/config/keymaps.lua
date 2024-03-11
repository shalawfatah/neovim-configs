-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("n", "<leader>js", [[:!node %<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ts", [[:!tsc %<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><Enter>", [[:!npm run start<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>dev", [[:!npm run dev<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bd", [[:!npm run build<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>h", [[:nohl <CR>]], {})
vim.api.nvim_set_keymap("n", "<C-s>", ":Silicon<CR>", { noremap = true })
vim.api.nvim_set_keymap("v", "<C-s>", ":Silicon<CR>", { noremap = true })
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {})
