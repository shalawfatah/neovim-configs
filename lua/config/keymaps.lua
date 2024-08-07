-- LOCAL VARIABLES
local key = vim.keymap.set
local opts = { noremap = true, silent = true, nowait = true } -- OPTIONS FOR KEYBINDINGS
local buf = ":lua vim.lsp.buf."                               -- BUFFER RELATED COMMANDS
local nv = { "n", "v" }                                       -- NORMAL, & VISUAL MODES
-- TELESCOPE KEYBINDINGS
key("n", "<C-p>", ":Telescope find_files<CR>", opts)          -- SHOW DIR & FILES IN THE PROJECT
key("n", "<leader>lg", ":Telescope live_grep<CR>", opts)      -- LIVE SEARCH IN ENTIRE PROJECT
key("n", "<leader>fw", ":Telescope grep_string<CR>", opts)    -- FIND WORD
key("n", "<leader>f", ":Telescope buffers<CR>", opts)         -- SHOW OPEN BUFFERS
key("n", "<leader>h", ":Telescope help_tags<CR>", opts)       -- SHOW HELP TAGS
key("n", "<leader>u", ":Telescope undo<CR>", opts)            -- SHOW UNDO TREE
key("n", "<leader>w", ":Telescope projects<CR>", opts)        -- SHOW PROJECTS
key("n", "<leader>y", ":Telescope neoclip<CR>", opts)         -- SHOW YANK TREE
key("n", '<leader>ld', ':Telescope diagnostics<CR>', opts) -- SHOW ALL LINTING ERRORS
-- LSP - Saga KEYBINDINGS
key("n", "gd", ":Lspsaga peek_definition<CR>", opts)                    -- HOVER
key("n", "K", ":Lspsaga hover_doc<CR>", opts)                           -- HOVER
key("n", "gt", buf .. "type_definition()<CR>", opts)                    -- WHAT IS THE TYPE OF THE CODE
key("n", "<leader>ft", buf .. "format() <CR>", opts)                    -- FORMAT CODE
key("n", "<leader>ca", buf .. "code_action()<CR>", opts)                -- CODE ACTION IS AVAILABLE
key("n", "<leader>rf", ":Telescope lsp_references<CR>", opts)           -- WHERE IS THE CODE REFERENCED
key("n", "<leader>rn", buf .. "rename()<CR>", opts)                     -- RENAME THE CODE IN ALL PLACES
key("i", "<C-Enter>", buf .. "completion()<CR>", opts)                  -- CODE COMPLETION
key("n", "<leader>ds", buf .. "document_symbol()<CR>", opts)            -- DECLARED VARS, FUNCS, CLASSES
-- LINE MOVER PLUGIN
key("n", "<A-Down>", ":MoveLine 1<CR>", opts)                           -- MOVE LINE UP
key("n", "<A-Up>", ":MoveLine -1<CR>", opts)                            -- MOVE LINE DOWN
key("x", "<A-Up>", ":MoveBlock -1<CR>", opts)                           -- MOVE BLOCK UP
key("x", "<A-Down>", ":MoveBlock 1<CR>", opts)                          -- MOVE BLOCK DOWN
key("n", "<A-Left>", ":MoveWord -1<CR>", opts)                          -- MOVE WORD LEFT
key("n", "<A-Right>", ":MoveWord 1<CR>", opts)                          -- MOVE WORD RIGHT
-- GIT KEYBINDINGS
key("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", opts) -- SHOW GIT LINE COMMIT OWNER
key(nv, "<C-z>", [[:LazyGit<CR>]], opts)                                -- LazyGit
-- TOGGLE TERMINAL KEYBINDINGS                                  -- TOGGLE TERMINAL
key(nv, "<C-/>", [[:ToggleTerm direction=float<CR>]], opts)
key(nv, "<C-h>", [[:ToggleTerm direction=horizontal<CR>]], opts)
key(nv, "<C-v>", [[:ToggleTerm size=40 direction=vertical<CR>]], opts)
key(nv, "<C-t>", [[:ToggleTerm size=40 direction=tab<CR>]], opts)
-- DEBUGGING KEYBINDINGS
key("n", "<C-d>", [[:lua require("dap").toggle_breakpoint()<CR>]], opts)
key("n", "<C-dc>", [[:lua require("dap").continue()<CR>]], opts)
-- UTILITY KYES
key(nv, "<leader>o", ":Oil<CR>", opts)                                 -- FILE EDITING
key(nv, "<C-s>", ":Silicon<CR>", opts)                                 -- SCREENSHOT
key("n", "<leader>md", ":MarkdownPreviewToggle<CR>", opts)             -- MARKDOWN TOGGLE
key(nv, "<leader>b", ":Neotree filesystem toggle<CR>", opts)           -- EXPLORER
key("n", "<leader>nh", [[:nohl <CR>]], opts)                           -- GET RID OF HIGHTLIGHTS
key("n", "<S-Up>", [[:lua require("togglr").toggle_word()<CR>]], opts) -- TOGGLES WORD
key(nv, "<leader>d", [[:bd<CR>]], opts)                                -- DELETES CURRENT BUFFER (CLOSE FILE)
key(nv, "<S-Z>", ':lua require("utils.zen_mode").ToggleLastStatus()<CR>', opts)
key(nv, "<S-Y>", [[:%y<CR>]], opts)                                    -- YANKS ENTIRE BUFFER
key(nv, "<leader>v", [[:normal! ggVG$<CR>]], opts)                     -- HIGHLIGHTS ENTIRE BUFFER
key("n", "<leader>xx", [[:lua vim.diagnostic.open_float(nil, {focus=true, scope="cursor"})<CR>]], opts)
