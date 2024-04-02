-- LOCAL VARIABLES
local key = vim.keymap.set
local opts = { noremap = true, silent = true }
local buf = ":lua vim.lsp.buf."
local nv = { "n", "v" }
-- TELESCOPE KEYBINDINGS
key("n", "<C-p>", ":Telescope find_files<CR>", opts) -- SHOW BUFFERS IN THE PROJECT
key("n", "<leader>lg", ":Telescope live_grep<CR>", opts) -- LIVE SEARCH IN ENTIRE PROJECT
key("n", "<leader>bf", ":Telescope buffers<CR>", opts) -- SHOW OPEN BUFFERS
key("n", "<leader>h", ":Telescope help_tags<CR>", opts) -- SHOW HELP TAGS
key("n", "<leader>u", ":Telescope undo<CR>", opts) -- SHOW UNDO TREE
key("n", "<leader>w", ":Telescope projects<CR>", opts) -- SHOW PROJECTS
key("n", "<leader>y", ":Telescope neoclip<CR>", opts) -- SHOW YANK TREE
key(nv, "<leader>rr", [[:lua require('telescope').extensions.refactoring.refactors()<CR>]], opts)
-- LSP KEYBINDINGS
key("n", "K", buf .. "hover()<CR>", opts) -- HOVER
key("n", "gd", buf .. "definition()<CR>", opts) -- WHERE IS THE CODE DEFINED
key("n", "gt", buf .. "type_definition()<CR>", opts) -- WHAT IS THE TYPE OF THE CODE
key("n", "<leader>ft", buf .. "format() <CR>", opts) -- FORMAT CODE
key("n", "<leader>ca", buf .. "code_action()<CR>", opts) -- CODE ACTION IS AVAILABLE
key("n", "<leader>rf", ":Telescope lsp_references<CR>", opts) -- WHERE IS THE CODE REFERENCED
key("n", "<leader>rn", buf .. "rename()<CR>", opts) -- RENAME THE CODE IN ALL PLACES
key("i", "<C-Enter>", buf .. "completion()<CR>", opts) -- CODE COMPLETION
key("n", "<leader>ds", buf .. "document_symbol()<CR>", opts) -- DECLARED VARS, FUNCS, CLASSES
-- LINE MOVER PLUGIN
key("n", "<A-Down>", ":MoveLine 1<CR>", opts) -- MOVE LINE UP
key("n", "<A-Up>", ":MoveLine -1<CR>", opts) -- MOVE LINE DOWN
key("x", "<A-Up>", ":MoveBlock -1<CR>", opts) -- MOVE BLOCK UP
key("x", "<A-Down>", ":MoveBlock 1<CR>", opts) -- MOVE BLOCK DOWN
key("n", "<A-Left>", ":MoveWord -1<CR>", opts) -- MOVE WORD LEFT
key("n", "<A-Right>", ":MoveWord 1<CR>", opts) -- MOVE WORD RIGHT
-- GIT KEYBINDINGS
key("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", opts) -- SHOW GIT LINE COMMIT OWNER
key(nv, "<C-g>", [[:LazyGit<CR>]], opts) -- LazyGit
-- TOGGLE TERMINAL KEYBINDINGS
key(nv, "<C-h>", [[:ToggleTerm size=10 direction=horizontal name=horiz<CR>]], opts)
key(nv, "<C-v>", [[:ToggleTerm size=45 direction=vertical name=vertic<CR>]], opts)
-- DEBUGGING KEYBINDINGS
key("n", "<leader>dt", [[:lua require("dap").toggle_breakpoint()<CR>]], opts)
key("n", "<leader>dc", [[:lua require("dap").continue()<CR>]], opts)
-- UTILITY KEYS
key(nv, "<leader>o", ":Oil<CR>", opts) -- FILE EDITING
key(nv, "<C-s>", ":Silicon<CR>", opts) -- SCREENSHOT
key(nv, "<leader>b", ":Neotree filesystem toggle<CR>", opts) -- EXPLORER
key("n", "<leader>md", ":MarkdownPreviewToggle<CR>", opts) -- MARKDOWN TOGGLE
key("n", "<leader>nh", [[:nohl <CR>]], opts) -- GET RID OF HIGHTLIGHTS
key("n", "<S-Up>", [[:lua require("togglr").toggle_word()<CR>]], opts) -- TOGGLE WORD
key(nv, "<leader>tr", [[:Trim<CR>]], opts) -- TRIM TRAILING SPACE
key(nv, "<leader>d", [[:bd<CR>]], opts) -- DELETE CURRENT BUFFER (CLOSE FILE)
