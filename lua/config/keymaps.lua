-- LOCAL VARIABLES
local key = vim.keymap.set
local opts = { noremap = true, silent = true, nowait = true } -- OPTIONS FOR KEYBINDINGS
local nv = { "n", "v" }                                       -- NORMAL, & VISUAL MODES
-- UTILITY KYES
key("n", "<leader>nh", [[:nohl <CR>]], opts)                           -- GET RID OF HIGHTLIGHTS
key("n", "<S-Up>", [[:lua require("togglr").toggle_word()<CR>]], opts) -- TOGGLES WORD
key(nv, "<leader>d", [[:bd<CR>]], opts)                                -- DELETES CURRENT BUFFER (CLOSE FILE)
key(nv, "<S-Z>", ':lua require("utils.zen_mode").ToggleLastStatus()<CR>', opts)
key(nv, "<S-Y>", [[:%y<CR>]], opts)                                    -- YANKS ENTIRE BUFFER
key(nv, "<leader>v", [[:normal! ggVG$<CR>]], opts)                     -- HIGHLIGHTS ENTIRE BUFFER
