-- LOCAL VARIABLES
local key = vim.keymap.set
local nor = { noremap = true, silent = true }
local buf = ":lua vim.lsp.buf."
-- TELESCOPE KEYBINDINGS
key("n", "<C-p>", ":Telescope find_files<CR>", nor)                    -- SHOW FILES IN THE PROJECT
key("n", "<leader>lg", ":Telescope live_grep<CR>", nor)                -- SEARCH PROJECT FOR WORDS
key("n", "<leader>bf", ":Telescope buffers<CR>", nor)                  -- SHOW OPEN BUFFERS
key("n", "<leader>h", ":Telescope help_tags<CR>", nor)                 -- SHOW HELP TAGS
key("n", "<leader>u", ":Telescope undo<CR>", nor)                      -- SHOW UNDO TREE
key("n", "<leader>w", ":Telescope projects<CR>", nor)                  -- SHOW PROJECTS
key("n", "<leader>y", ":Telescope neoclip<CR>", nor)                   -- SHOW COPY-PASTE TREE
-- LSP KEYBINDINGS
key("n", "K", buf .. "hover()<CR>", nor)                               -- HOVER
key("n", "gd", buf .. "definition()<CR>", nor)                         -- WHERE IS THE CODE DEFINED
key("n", "gt", buf .. "type_definition()<CR>", nor)                    -- WHAT IS THE TYPE OF THE CODE
key("n", "<leader>ft", buf .. "format() <CR>", nor)                    -- WHAT IS THE TYPE OF THE CODE
key("n", "<leader>ca", buf .. "code_action()<CR>", nor)                -- WHICH CODE ACTION IS AVAILABLE
key("n", "<leader>rf", ":Telescope lsp_references<CR>", nor)           -- WHERE IS THE CODE REFERENCED
key("n", "<leader>rn", buf .. "rename()<CR>", nor)                     -- RENAME THE CODE THROUGHOUT ALL
key("i", "<C-Enter>", buf .. "completion()<CR>", nor)                  -- WHAT COMES AS CODE COMPLETIOn
key("n", "<leader>ds", buf .. "document_symbol()<CR>", nor)            -- DECLARED VARS, FUNCS, CLASSES
-- COMMON LANGUAGE KEYBINDINGS
key("n", "<leader>js", [[:!node %<CR>]], nor)                          -- RUN CURRENT JS FILE
key("n", "<leader>ts", [[:!tsc %<CR>]], nor)                           -- RUN CURRENT TS FILE
key("n", "<leader>go", [[:!go run %<CR>]], nor)                        -- RUN CURRENT GO FILE
-- UTILITY KEYS
key({ "n", "v" }, "<leader>o", ":Oil<CR>", nor)                        -- FILE EDITING
key({ "n", "v" }, "<C-s>", ":Silicon<CR>", nor)                        -- SCREENSHOT
key({ "n", "v" }, "<leader>b", ":Neotree filesystem toggle<CR>", nor)  -- EXPLORER
key("n", "<leader>md", ":MarkdownPreviewToggle<CR>", nor)              -- MARKDOWN TOGGLE
key("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", nor) -- SHOW GIT LINE COMMIT OWNER
key("n", "<leader>hl", [[:nohl <CR>]], nor)                            -- GET RID OF HIGHTLIGHTS
