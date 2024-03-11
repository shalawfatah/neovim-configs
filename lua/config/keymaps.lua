-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap('n', '<leader><Enter>', [[:!node %<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>h', [[:nohl <CR>]], {})
vim.api.nvim_set_keymap('n', '<C-s>', ':Silicon<CR>', {noremap = true})
vim.api.nvim_set_keymap('v', '<C-s>', ':Silicon<CR>', {noremap = true})
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {})
