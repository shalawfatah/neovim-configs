local key = vim.keymap.set
-- VIM KEYBINDINGS
key("n", "<leader>h", [[:nohl <CR>]], {})
key("n", "<leader>pp", [[:bprevious<CR>]], {})
key("v", "<leader>pp", [[:bprevious<CR>]], {})
-- JS/TS KEYBINDINGS
key("n", "<leader>js", [[:!node %<CR>]], { noremap = true, silent = true })
key("n", "<leader>ts", [[:!tsc %<CR>]], { noremap = true, silent = true })
key("n", "<leader><Enter>", [[:!npm run start<CR>]], { noremap = true, silent = true })
key("n", "<leader>dev", [[:!npm run dev<CR>]], { noremap = true, silent = true })
key("n", "<leader>bd", [[:!npm run build<CR>]], { noremap = true, silent = true })
-- SCREENSHOT KEYBINDINGS
key("n", "<C-s>", ":Silicon<CR>", { noremap = true })
key("v", "<C-s>", ":Silicon<CR>", { noremap = true })
-- GIT KEYBINDINGS
key("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
key("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {})
-- EDIT KEYBINDINGS
key("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })
key("v", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- FILE EXPLORER KEYBINDINGS
key("n", "<C-b>", ":Neotree filesystem toggle<CR>", {})
key("v", "<C-b>", ":Neotree filesystem toggle<CR>", {})
-- LSP KEYBINDINGS
key("n", "K", vim.lsp.buf.hover, {})
key("n", "gd", vim.lsp.buf.definition, {})
key({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
