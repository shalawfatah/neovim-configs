# NEOVIM ENVIRONMENT CONFIGURATION

### Features
The final config has these features provided by the mentioned plugins: 

- [x] Fuzzy search for words, buffers, commands and projects/workspaces using `telescope`
- [x] Undo history using telescope and undo extension 
- [x] Yank history using telescope and yank plugin, using sqlite to persist yanks throughout different sessions
- [x] Integrated terminal using toggleterm plugin, with float, vertical and horizontal choices
- [x] Easy motion using Leap.nvim plugin
- [x] Screenshot of full page and partial code using silicon 
- [x] A custom look for the dashboard 
- [x] A big file management plugin to work with large files 
- [x] Color highlighting using three plugins 
- [x] A beautiful lua status line 
- [x] Formatting different languages using lua formatter 
- [x] A completion engine using nvim-cmp
- [x] Code snippets and suggestion using lsp and nvim-cmp 
- [x] Different LSP providers including JS,TS, Go and Python.
- [x] Linters for JS, TS, Golang and Python using treesitter 
- [x] Folding and unfolding using the nvim-ufo plugin 
- [x] Text case plugin to immediately convert lower case to uppercase and other formats. 
- [x] Markdown preview through a plugin 
- [x] File explorer through neo-tree plugin 
- [x] Auto pairs and tags using two different plugins 
- [x] A smooth scrolling process using a plugin 
- [x] A theme using Catppuccing theme, icons using web-devicons, different colors for different modes
- [x] A file editor using oil nvim plugin 
- [x] Pair programming and sharing code using a plugin 
- [x] Live server using a plugin 
- [x] Set up documentation using a plugin 
- [x] Auto-save functionality 
- [x] Ability to open URLs using a plugin 
- [x] Multi-cursor using visual-multi plugin 
- [x] Storing, re-using and managing macros using a plugin 
- [x] Notification system using noice plugin 
- [x] Git management, including logs, signs, conflicts and blame using different plugins 
- [x] Improving vim.ui interface, including input and select using a plugin 
- [x] Action and reference hints using a plugin 
- [x] Moving lines and words up and down, left and right using a plugin 
- [x] Trimming trailing spaces, last or first empty lines using a plugin 
- [x] Toggling words to opposite, like `true` to `false` and `<` to `>`
- [x] Debugger for Golang and Javascript 
- [x] Commenting and un-commenting lines, blocks using a plugin 
- [x] The ability to rename code throughout the project, find where they are dfined, and all their references throughout the project, along with symbol tree and other features like types and structure.
- [x] The ability to refactor code using refactoring plugin. 


### How To

- Install [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip)
- Check if you have `Zsh` if not, install it, make it `default shell`
- Use [starship](https://starship.rs) to change the terminal prompt message
- Install [auto-complete](https://github.com/marlonrichert/zsh-autocomplete) for `zsh`
- Clone the above repo to to your root folder, `~/Repo`
- Copy this line in your `~/.zshrc`: `source ~/Repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh`
- Install `ripgrep` for live search on `telescope` to work.
- Install `lazygit` if you want to use the lazygit plugin. 
- Install `make` for `fzf` on `telescope` on linux.
- Install `delve` if you want to debug Go applications using neovim 

### Kitty Terminal

- Install [Kitty](https://sw.kovidgoyal.net/kitty/) Terminal
- Configure it as below in `~/.config/kitty/kitty.conf`

```bash
# FONT
font_family FiraCode Nerd Font Mono
font_size 20
modify_font baseline 110%

# BORDER
window_border_width 1
window_padding_width 16
active_border_color #15191f

# COLORS
background #313446
macos_titlebar_color #313446
inactive_text_alpha 0.1
inactive_border_color #367588

# BACKGROUND
window_logo_path /Users/user/.config/kitty/origami.png
window_logo_position center
window_logo_alpha 0.1
```

### Neovim

- Install [Neovim](https://neovim.io/)
- Install [Lazy.nvim](https://github.com/folke/lazy.nvim) package manager
- write your `keybindings` in `~/.config/nvim/lua/config/keymaps.lua` file

```lua
-- LOCAL VARIABLES
local key = vim.keymap.set
local opts = { noremap = true, silent = true }
local buf = ":lua vim.lsp.buf."
local duo = { "n", "v" }
-- TELESCOPE KEYBINDINGS
key("n", "<C-p>", ":Telescope find_files<CR>", opts) -- SHOW BUFFERS IN THE PROJECT
key("n", "<leader>lg", ":Telescope live_grep<CR>", opts) -- LIVE SEARCH IN ENTIRE PROJECT
key("n", "<leader>bf", ":Telescope buffers<CR>", opts) -- SHOW OPEN BUFFERS
key("n", "<leader>h", ":Telescope help_tags<CR>", opts) -- SHOW HELP TAGS
key("n", "<leader>u", ":Telescope undo<CR>", opts) -- SHOW UNDO TREE
key("n", "<leader>w", ":Telescope projects<CR>", opts) -- SHOW PROJECTS
key("n", "<leader>y", ":Telescope neoclip<CR>", opts) -- SHOW YANK TREE
key(duo, "<leader>rr", [[:lua require('telescope').extensions.refactoring.refactors()<CR>]], opts)
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
-- COMMON LANGUAGE KEYBINDINGS
key("n", "<leader>js", [[:!node %<CR>]], opts) -- RUN CURRENT JS FILE
key("n", "<leader>ts", [[:!tsc %<CR>]], opts) -- RUN CURRENT TS FILE
key("n", "<leader>go", [[:!go run %<CR>]], opts) -- RUN CURRENT GO FILE
-- LINE MOVER PLUGIN
key("n", "<A-Down>", ":MoveLine 1<CR>", opts) -- MOVE LINE UP
key("n", "<A-Up>", ":MoveLine -1<CR>", opts) -- MOVE LINE DOWN
key("x", "<A-Up>", ":MoveBlock -1<CR>", opts) -- MOVE BLOCK UP
key("x", "<A-Down>", ":MoveBlock 1<CR>", opts) -- MOVE BLOCK DOWN
key("n", "<A-Left>", ":MoveWord -1<CR>", opts) -- MOVE WORD LEFT
key("n", "<A-Right>", ":MoveWord 1<CR>", opts) -- MOVE WORD RIGHT
-- GIT KEYBINDINGS
key("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", opts) -- SHOW GIT LINE COMMIT OWNER
key(duo, "<C-g>", [[:LazyGit<CR>]], opts) -- LazyGit
-- FOLDING KEYBINDINGS
key("n", "zr", [[:lua require("ufo").openAllFolds()<CR>]], opts)
key("n", "zm", [[:lua require("ufo").closeAllFolds()<CR>]], opts)
key("n", "zR", [[:lua require("ufo").openFoldsExceptKinds()<CR>]], opts)
key("n", "zM", [[:lua require("ufo").closeFoldsWith()<CR>]], opts)
-- TOGGLE TERMINAL KEYBINDINGS
key("n", "<C-h>", [[:ToggleTerm size=10 direction=horizontal name=horiz<CR>]], opts)
key("n", "<C-v>", [[:ToggleTerm size=45 direction=vertical name=vertic<CR>]], opts)
-- DEBUGGING KEYBINDINGS
key("n", "<leader>dt", [[:lua require("dap").toggle_breakpoint()<CR>]], opts)
key("n", "<leader>dc", [[:lua require("dap").continue()<CR>]], opts)
-- UTILITY KEYS
key(duo, "<leader>o", ":Oil<CR>", opts) -- FILE EDITING
key(duo, "<C-s>", ":Silicon<CR>", opts) -- SCREENSHOT
key(duo, "<leader>b", ":Neotree filesystem toggle<CR>", opts) -- EXPLORER
key("n", "<leader>md", ":MarkdownPreviewToggle<CR>", opts) -- MARKDOWN TOGGLE
key("n", "<leader>hl", [[:nohl <CR>]], opts) -- GET RID OF HIGHTLIGHTS
key("n", "<S-Up>", [[:lua require("togglr").toggle_word()<CR>]], opts) -- TOGGLE WORD
key(duo, "<leader>tr", [[:Trim<CR>]], opts) -- TRIM TRAILING SPACE                                -- LazyGit  
```

- write your `options` in `~/.config/nvim/lua/config/options.lua`

```lua
local opt = vim.opt

opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.clipboard = "unnamedplus"
opt.number = true
opt.relativenumber = true
vim.g.mapleader = " "
vim.o.signcolumn = "yes"

-- FOLDING 
vim.o.foldenable = true
vim.o.fillchars = 'eob: ,fold: ,foldopen:,foldsep: ,foldclose:'
vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
```

**Plugins to install**

```bash
Comment.nvim
LuaSnip
action-hints.nvim
alpha-nvim
auto-save.nvim
bigfile.nvim
catppuccin
ccc.nvim
cmp-buffer
cmp-nvim-lsp
cmp_luasnip
colortils.nvim
core.nvim
dooku.nvim
dressing.nvim
friendly-snippets
gitsigns.nvim
highlight-undo.nvim
lazy.nvim
lazygit.nvim
leap.nvim
live-server.nvim
livecode.nvim
lualine.nvim
markdown-preview.nvim
mason-lspconfig.nvim
mason.nvim
modes.nvim
move.nvim
neo-tree.nvim
neoscroll.nvim
noice.nvim
none-ls.nvim
nui.nvim
nvim-autopairs
nvim-cmp
nvim-colorizer.lua
nvim-dap
nvim-dap-go
nvim-dap-ui
nvim-lspconfig
nvim-macros
nvim-neoclip.lua
nvim-nio
nvim-notify
nvim-silicon
nvim-treesitter
nvim-ts-autotag
nvim-ufo
nvim-web-devicons
oil.nvim
plenary.nvim
project.nvim
promise-async
refactoring.nvim
sqlite.lua
telescope-file-browser.nvim
telescope-fzf-native.nvim
telescope-lsp-handlers.nvim
telescope-symbols.nvim
telescope-ui-select.nvim
telescope-undo.nvim
telescope.nvim
text-case.nvim
toggleterm.nvim
togglr.nvim
trim.nvim
url-open
vim-visual-multi
```

### Commands to Run

```bash
source %
Lazy
TSUpdate
Mason
MasonUpdate
MasonInstall *-language-server
```

### Keybindings

| Modes                     | Operations in Insert Mode                                                                                                                                           |
| ------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Movements & Motions       | `h` left, `j` down, `k` up, `l` right                                                                                                                               |
| Copy / Paste              | `y` copy, `p` paste                                                                                                                                                 |
| Delete / Cut              | `d` delete, `x` cut                                                                                                                                                 |
| Utilities                 | Repeat `.` , Undo `u`, Redo `<C-r>`, Change `c`, `q` quit, `w` save, `!` force                                                                                      |
| Auxiliary                 | `x` character, `xx` line, `0-9` number, `$` end, `.` beginning, `{}` paragraph up/down , `p:` paragraph, `i` inner, `a` a                                           |
| Speciality                | `0` start of line, `_` before line starts, `e` end of word, `zz` centre view, `gg` top, `G` bottom, `%` go to opening/closing paragraph, `:!` run terminal commands |
| Replace                   | `:%s/old/new/g`, `:s/old/new/`, `r`                                                                                                                                 |
| Search / Find             | `:%s/pattern//g`, `, /`                                                                                                                                             |
| Normal Ops in Insert Mode | `Ctrl + W` delete word, `Ctrl + u` delete to beginning of line, `Ctrl + o` do normal mode in insert mode                                                            |

### Resources

https://github.com/miraculusik/dotfiles/blob/main/.config/nvim/init.lua
