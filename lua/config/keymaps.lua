local key = vim.keymap.set

key("n", "<leader>h", [[:nohl <CR>]], {})
key("n", "<leader>e", [[:bprevious <CR>]], {})
key("n", "<leader>n", [[:bnext <CR>]], {})

-- JS/TS KEYBINDINGS
key("n", "<leader>js", [[:!node %<CR>]], { noremap = true, silent = true })
key("n", "<leader>jj", [[:'<,'>w !node<CR>]], { noremap = true, silent = true })
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
key("n", "<leader>b", ":Neotree filesystem toggle<CR>", { noremap = true, silent = true })
key("v", "<leader>b", ":Neotree filesystem toggle<CR>", { noremap = true, silent = true })

-- LSP KEYBINDINGS
key("n", "K", vim.lsp.buf.hover, {}) -- hover
key("n", "gd", vim.lsp.buf.definition, {}) -- where is the code defined
key("n", "gt", vim.lsp.buf.type_definition, {}) -- what is the type of the code
key("n", "<leader>ft", vim.lsp.buf.format, {}) -- what is the type of the code
key("n", "<leader>ca", "<CMD>lua vim.lsp.buf.code_action()<CR>", {}) -- what actions can be done
key("n", "<leader>rf", ":Telescope lsp_references<CR>", {}) -- where is the code referenced
key("n", "<leader>rn", "<CMD> lua vim.lsp.buf.rename()<CR>", {}) -- rename the code throughout all
key("i", "<C-Enter>", "<CMD> lua vim.lsp.buf.completion()<CR>", {}) -- what comes as code completion
key("n", "<leader>ds", "<CMD> lua vim.lsp.buf.document_symbol()<CR>", {}) -- declared vars, funcs, classes

-- MARKDOWN PREVIEW
key("n", "<leader>md", ":MarkdownPreview<CR>", { noremap = true, silent = true })
key("n", "<leader>mdc", ":MarkdownPreviewStop<CR>", { noremap = true, silent = true })
key("n", "<leader>mdt", ":MarkdownPreviewToggle<CR>", { noremap = true, silent = true })

-- Live Server
key("n", "<leader>live", ":LiveServerStart<CR>", { noremap = true, silent = true })
key("n", "<leader>stop", ":LiveServerStop<CR>", { noremap = true, silent = true })

-- TELESCOPE KEYBINDINGS
key("n", "<C-p>", ":Telescope find_files<CR>", {})
key("n", "<leader>fg", ":Telescope live_grep<CR>", {})
key("n", "<leader>fb", ":Telescope buffers<CR>", {})
key("n", "<leader>fh", ":Telescope help_tags<CR>", {})
key("n", "<leader>u", ":Telescope undo_tree<CR>", {})
key("n", "<leader>w", ":Telescope projects<CR>", {})
key("n", "<leader>y", ":Telescope neoclip<CR>", {})
