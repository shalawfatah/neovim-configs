local key = vim.keymap.set

key("n", "<leader>h", [[:nohl <CR>]], {})
key("n", "<leader>pp", [[:bprevious<CR>]], {})
key("v", "<leader>pp", [[:bprevious<CR>]], {})

-- JS/TS KEYBINDINGS
key("n", "<leader>js", [[:!node %<CR>]], { noremap = true, silent = true })
key("n", "<leader>jjs", [[:'<,'>w !node<CR>]], { noremap = true, silent = true })
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
key("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- MARKDOWN PREVIEW
key("n", "<leader>md", ":MarkdownPreview<CR>", { noremap = true, silent = true })
key("n", "<leader>mdc", ":MarkdownPreviewStop<CR>", { noremap = true, silent = true })
key("n", "<leader>mdt", ":MarkdownPreviewToggle<CR>", { noremap = true, silent = true })

-- Live Server
key("n", "<leader>live", ":LiveServerStart<CR>", { noremap = true, silent = true })
key("n", "<leader>stop", ":LiveServerStop<CR>", { noremap = true, silent = true })

-- TELESCOPE KEYBINDINGS
key('n', '<C-p>', ':Telescope find_files<CR>', {})
key('n', '<leader>fg', ':Telescope live_grep<CR>', {})
key('n', '<leader>fb', ':Telescope buffers<CR>', {})
key('n', '<leader>fh', ':Telescope help_tags<CR>', {})
key('n', '<leader>u', ':Telescope undo_tree<CR>', {})
key("n", "<leader>fb", ":Telescope file_browser<CR>", {})
key("n", "<leader>w", ":Telescope projects<CR>", {})
key("n", "<leader>y", ":Telescope neoclip<CR>", {})
