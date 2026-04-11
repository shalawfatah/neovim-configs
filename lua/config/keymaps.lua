-- LOCAL VARIABLES
local key = vim.keymap.set
local opts = { noremap = true, silent = true, nowait = true } -- OPTIONS FOR KEYBINDINGS
local nv = { "n", "v" } -- NORMAL, & VISUAL MODES
-- UTILITY KYES
key("n", "<leader>nh", [[:nohl <CR>]], opts) -- GET RID OF HIGHTLIGHTS
key("n", "<S-Up>", [[:lua require("togglr").toggle_word()<CR>]], opts) -- TOGGLES WORD
key(nv, "<leader>d", [[:bd<CR>]], opts) -- DELETES CURRENT BUFFER (CLOSE FILE)
key(nv, "<S-Z>", ':lua require("utils.zen_mode").ToggleLastStatus()<CR>', opts)
key(nv, "<S-Y>", [[:%y<CR>]], opts) -- YANKS ENTIRE BUFFER
key(nv, "<leader>v", [[:normal! ggVG$<CR>]], opts) -- HIGHLIGHTS ENTIRE BUFFER
key(nv, "<S-F>", [[:lua vim.diagnostic.open_float()<CR>]], opts) -- SHOW DIAGNOSTICS ON CURRENT WORD
key(nv, "<S-Q>", [[:lua vim.diagnostic.setqflist()<CR>]], opts) -- SHOW QUICK FIX LIST
vim.keymap.set("n", "<leader>l", vim.diagnostic.open_float, opts)
key("n", "<leader>nh", [[:nohl <CR>]], opts) -- GET RID OF HIGHTLIGHTS
pcall(vim.keymap.del, "n", "q") -- Safe deletion
-- Peek definition in a floating window
vim.keymap.set("n", "<leader>pd", "<cmd>Lspsaga peek_definition<CR>", opts)

-- Go to definition (normal jump, still works)
vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<CR>", opts)

-- Show hover
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)

-- Show all diagnostics in a floating window
vim.keymap.set("n", "<leader>e", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)

-- Jump to next / previous diagnostic
vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
