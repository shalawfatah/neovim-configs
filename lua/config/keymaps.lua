-- LOCAL VARIABLES
local key = vim.keymap.set
local opts = { noremap = true, silent = true }
local buf = ":lua vim.lsp.buf."
local duo = { "n", "v" }
-- TELESCOPE KEYBINDINGS
key("n", "<C-p>", ":Telescope find_files<CR>", opts)                             -- SHOW BUFFERS IN THE PROJECT
key("n", "<leader>lg", ":Telescope live_grep<CR>", opts)                         -- LIVE SEARCH IN ENTIRE PROJECT
key("n", "<leader>bf", ":Telescope buffers<CR>", opts)                           -- SHOW OPEN BUFFERS
key("n", "<leader>h", ":Telescope help_tags<CR>", opts)                          -- SHOW HELP TAGS
key("n", "<leader>u", ":Telescope undo<CR>", opts)                               -- SHOW UNDO TREE
key("n", "<leader>w", ":Telescope projects<CR>", opts)                           -- SHOW PROJECTS
key("n", "<leader>y", ":Telescope neoclip<CR>", opts)                            -- SHOW YANK TREE
-- LSP KEYBINDINGS
key("n", "K", buf .. "hover()<CR>", opts)                                        -- HOVER
key("n", "gd", buf .. "definition()<CR>", opts)                                  -- WHERE IS THE CODE DEFINED
key("n", "gt", buf .. "type_definition()<CR>", opts)                             -- WHAT IS THE TYPE OF THE CODE
key("n", "<leader>ft", buf .. "format() <CR>", opts)                             -- FORMAT CODE
key("n", "<leader>ca", buf .. "code_action()<CR>", opts)                         -- CODE ACTION IS AVAILABLE
key("n", "<leader>rf", ":Telescope lsp_references<CR>", opts)                    -- WHERE IS THE CODE REFERENCED
key("n", "<leader>rn", buf .. "rename()<CR>", opts)                              -- RENAME THE CODE IN ALL PLACES
key("i", "<C-Enter>", buf .. "completion()<CR>", opts)                           -- CODE COMPLETION
key("n", "<leader>ds", buf .. "document_symbol()<CR>", opts)                     -- DECLARED VARS, FUNCS, CLASSES
-- COMMON LANGUAGE KEYBINDINGS
key("n", "<leader>js", [[:!node %<CR>]], opts)                                   -- RUN CURRENT JS FILE
key("n", "<leader>ts", [[:!tsc %<CR>]], opts)                                    -- RUN CURRENT TS FILE
key("n", "<leader>go", [[:!go run %<CR>]], opts)                                 -- RUN CURRENT GO FILE
-- LINE MOVER PLUGIN
key("n", "<A-Down>", ":MoveLine 1<CR>", opts)                                    -- MOVE LINE UP
key("n", "<A-Up>", ":MoveLine -1<CR>", opts)                                     -- MOVE LINE DOWN
key("x", "<A-Up>", ":MoveBlock -1<CR>", opts)                                    -- MOVE BLOCK UP
key("x", "<A-Down>", ":MoveBlock 1<CR>", opts)                                   -- MOVE BLOCK DOWN
key("n", "<A-Left>", ":MoveWord -1<CR>", opts)                                   -- MOVE WORD LEFT
key("n", "<A-Right>", ":MoveWord 1<CR>", opts)                                   -- MOVE WORD RIGHT
-- GIT KEYBINDINGS
key("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", opts)          -- SHOW GIT LINE COMMIT OWNER
key(duo, "<leader>log", [[:<C-u>lua require("git-log").check_log()<CR>]], opts)  -- SHOW GIT LOG
-- UTILITY KEYS
key(duo, "<leader>o", ":Oil<CR>", opts)                                          -- FILE EDITING
key(duo, "<C-s>", ":Silicon<CR>", opts)                                          -- SCREENSHOT
key(duo, "<leader>b", ":Neotree filesystem toggle<CR>", opts)                    -- EXPLORER
key("n", "<leader>md", ":MarkdownPreviewToggle<CR>", opts)                       -- MARKDOWN TOGGLE
key("n", "<leader>hl", [[:nohl <CR>]], opts)                                     -- GET RID OF HIGHTLIGHTS
key("n", "<S-Up>", [[:lua require("togglr").toggle_word()<CR>]], opts)           -- TOGGLE WORD
key(duo, "<leader>tr", [[:Trim<CR>]], opts)                                      -- TRIM TRAILING SPACE & LINES
