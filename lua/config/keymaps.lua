-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- VIM KEYBINDINGS
vim.api.nvim_set_keymap("n", "<leader>h", [[:nohl <CR>]], {})
-- JS/TS KEYBINDINGS
vim.api.nvim_set_keymap("n", "<leader>js", [[:!node %<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ts", [[:!tsc %<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><Enter>", [[:!npm run start<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>dev", [[:!npm run dev<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bd", [[:!npm run build<CR>]], { noremap = true, silent = true })
-- SCREENSHOT KEYBINDINGS
vim.api.nvim_set_keymap("n", "<C-s>", ":Silicon<CR>", { noremap = true })
vim.api.nvim_set_keymap("v", "<C-s>", ":Silicon<CR>", { noremap = true })
-- GIT KEYBINDINGS
vim.api.nvim_set_keymap("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {})
-- EDIT KEYBINDINGS
vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("v", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- FILE EXPLORER KEYBINDINGS
vim.keymap.set("n", "<C-b>", ":Neotree filesystem toggle<CR>", {})
vim.keymap.set("v", "<C-b>", ":Neotree filesystem toggle<CR>", {})
-- LSP KEYBINDINGS
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
