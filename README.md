# NEOVIM ENVIRONMENT CONFIGURATION
This is an attempt to build a full IDE through neovim and its environment using lazy.nvim package. This IDE will not only replace your current IDE features, but adds to them. 

### Features
The final config has these features provided by the mentioned plugins: 

- [x] Fuzzy search for words, buffers, commands and projects/workspaces using `telescope`
- [x] Undo history using telescope and undo extension 
- [x] Yank history using telescope and yank plugin, using sqlite to persist yanks throughout different sessions
- [x] Integrated terminal using toggleterm plugin, with float, vertical and horizontal choices
- [x] Easy motion using Leap.nvim plugin
- [x] Manage sessions using Tmux
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
- [x] Marking and demakring files have better UI experience with mark column icons. 
- [x] Hiding/Unhiding nested fold numbers through the use of a plugin 

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
- Install Tmux `brew install tmux` 

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
- write your `options` in `~/.config/nvim/lua/config/options.lua`

**Plugins to install**

```bash
Comment.nvim                    # comment lines, blocks
LuaSnip                         # snippet engine
action-hints.nvim               # definition, reference hints
alpha-nvim                      # custom dashboard
auto-save.nvim                  # auto-save functionality
bigfile.nvim                    # opening big files better
catppuccin                      # catppuccin theme
ccc.nvim                        # create colors rgb, hsl, hex
nvim-cmp                        # completion enigne
cmp-buffer                      # helper for completion engine  
cmp-nvim-lsp                    # connecter of lsp and completion engine
cmp_luasnip                     # another helper for lsp and completion engine 
colortils.nvim                  # color utility
core.nvim                       # core nvim plugin 
dooku.nvim                      # generate documentation 
dressing.nvim                   # improve default vim.ui
friendly-snippets               # a collection of snippets 
gitsigns.nvim                   # git signs, add, subtract, change, etc 
highlight-undo.nvim             # visualize undo action 
lazy.nvim                       # lazy package manager 
lazygit.nvim                    # lazy git connector 
leap.nvim                       # easy motions for vim 
live-server.nvim                # live server 
livecode.nvim                   # share code 
lualine.nvim                    # better status line 
markdown-preview.nvim           # markdown preview 
marks.nvim                      # giving better marks experience with UI and keybindings
mason-lspconfig.nvim            # connector for mason package manager and lsp 
mason.nvim                      # mason package manager 
modes.nvim                      # different colors for different modes 
move.nvim                       # move lines and blocks of code left, right, up, and down
neo-tree.nvim                   # file explorer for neovim 
neoscroll.nvim                  # smooth scrolling for neovim 
noice.nvim                      # floating command line for neovim 
none-ls.nvim                    # lsp helper 
nui.nvim                        # better ui components for neovim 
nvim-autopairs                  # auto-pair functionality 
nvim-cmp                        # completion engine 
nvim-colorizer.lua              # colorize code 
nvim-dap                        # debug adapator protocol
nvim-dap-go                     # debug adaptor for golang 
nvim-dap-ui                     # neovim debug adaptor ui 
nvim-lspconfig                  # language server protocol engine 
nvim-macros                     # store, re-use macros 
nvim-neoclip.lua                # store yanks and re-use them 
nvim-nio                        # dependency for debugger  
nvim-notify                     # better notification system
nvim-silicon                    # screenshots of your code 
nvim-treesitter                 # helper for lsp, completion and linting
nvim-ts-autotag                 # auto tag for html 
nvim-ufo                        # folding and unfolding your code 
nvim-web-devicons               # web devicons for your neovim 
oil.nvim                        # edit files like text in neovim 
plenary.nvim                    # dependency for many plugins 
project.nvim                    # project and workspace management 
promise-async                   # folding and unfolding (ufo) plugin dependency  
refactoring.nvim                # refactoring engine for nvim 
sqlite.lua                      # sqlite database for neovim 
statuscol.lua                   # Hide status column folding numbers 
telescope-file-browser.nvim     # file browser integration for telescope 
telescope-fzf-native.nvim       # fuzzy search integration with telescope 
telescope-lsp-handlers.nvim     # lsp handler for telescope 
telescope-symbols.nvim          # symbol finder in telescope 
telescope-ui-select.nvim        # select, input ui for telescope 
telescope-undo.nvim             # undo tree for telescope 
telescope.nvim                  # telescope, a window manager for neovim 
text-case.nvim                  # change text for various cases, upper, lower, camel, etc
toggleterm.nvim                 # toggle terminal, floating, horizontal, or vertical 
togglr.nvim                     # toggle words to opposite, true to false < to >
trim.nvim                       # trim trailing white space, last and first empty lines 
url-open                        # open URLs in any file  
vim-tmux-navigator              # Configure keybindings between Vim and Tmux
vim-visual-multi                # multi-cursor operations made easy 
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

| Vim            | Keybinding       | Task                                     |
|----------------|------------------|------------------------------------------|
| **Global**                                                                   |
|                | `w`              | Save                                     |
|                | `q`              | Quit                                     |
|                | `!`              | Force                                    |
|                | `ZZ`             | Save and quit                            |
|                | `ls buffers`     | List all open buffers                    |
| **Modes**                                                                    |
|                | `i`              | Insert in place                          |
|                | `I`              | Insert in the beginning of line          |
|                | `a`              | Insert after character                   |
|                | `A`              | Insert at the end of line                |
|                | `o`              | Insert on new line                       |
|                | `O`              | Insert on new line above                 |
|                | `v`              | Visual mode                              |
|                | `:`              | Command mode                             |
|                | `ESC`            | Normal mode                              |
| **Movement**                                                                 |
|                | `h j k l`        | Left, Down, Up, Right                    |
|                | `gg \| H`        | Top screen                               |
|                | `G \| L`         | Bottom screen                            |
|                | `M`              | Middle screen                            |
|                | `Ctrl + d`       | Down half screen                         |
|                | `Ctrl + u`       | Up half screen                           |
|                | `21gg`           | Line 21                                  |
|                | `zz`             | Center cursor                            |
|                | `0`              | Start of line                            |
|                | `_`              | Before line starts                       |
|                | `$`              | End of line                              |
|                | `e`              | End of word                              |
|                | `%`              | Go to opening/closing paragraph          |
| **Editing**                                                                  |
|                | `y`              | Copy                                     |
|                | `p`              | Paste                                    |
|                | `12yy`           | Copy 12 lines                            |
|                | `]p`             | Paste and adjust indent                  |
|                | `d`              | Delete                                   |
|                | `x`              | Cut                                      |
|                | `c`              | Change                                   |
|                | `.` \| `;`       | Repeat                                   |
|                | `u`              | Undo                                     |
|                | `<C-r>`          | Redo                                     |
| **Visual Mode**                                                              |
|                | `x`              | Character                                |
|                | `xx`             | Line                                     |
|                | `0-9`            | Number                                   |
|                | `.`              | Beginning                                |
|                | `{...}`          | Paragraph up/down                        |
|                | `p`              | Paragraph                                |
|                | `i`              | Inner                                    |
|                | `a`              | Outer                                    |
|                | `o`              | Go to the other end of highlight         |
| **Speciality**                                                               |
|                | `J`              | Remove space between two lines           |
|                | `gwip`           | Reflow paragraph                         |
|                | `xp`             | Transpose two letters                    |
|                | `~, u, U`        | Switch character, word, line case        |
| **Search & Replace**                                                         |
|                | `:%s/pattern//g` | Search in document                       |
|                | `/`              | Forward search                           |
|                | `?`              | Backward search                          |
|                | `n`              | Repeat forward                           |
|                | `N`              | Backward repeat                          |
|                | `:%s/old/new/g`  | Replace in document                      |
|                | `:s/old/new/`    | Replace in document                      |
|                | `r`              | Replace character                        |
|                | `R`              | Replace until ESC pressed                |
|                | `:%s/old/new/gc` | Replace old with new with confirmations  |
| **Normal Ops in Insert Mode**                                                |
|                | `Ctrl + w`       | Delete word                              |
|                | `Ctrl + u`       | Delete to beginning of line              |
|                | `Ctrl + o`       | Normal mode in insert mode - 1 operation |
|                | `Ctrl + d/t`     | Indent                                   |
| **Registers**                                                                |
|                | `:reg`           | Show registers content                   |
|                | `"xy`            | Yank into register x                     |
|                | `"xp`            | Paste contents of register x             |
| **Marks**                                                                    |
|                | `:marks`         | List of marks                            |
|                | `ma`             | Set current position for mark A          |
|                | `` `a``          | Jump to position of mark A               |
|                | `:changes`       | List of change                           |
| **Macros**                                                                   |
|                | `qa`             | Record macro a                           |
|                | `q`              | Stop recording macro                     |
|                | `@a`             | Run macro a                              |
|                | `@@`             | Rerun last run macro                     |
| **Custom Keys**                                                              |
| **Telescope**                                                                |
|                | `<C-p>`          | Show files in a project                  |
|                | `<leader>lg`     | Search in entire project                 |
|                | `<leader>bf`     | Show open buffers                        |
|                | `<leader>h`      | Show help                                |
|                | `<leader>u`      | Show undo list                           |
|                | `<leader>w`      | Show projects                            |
|                | `<leader>y`      | Show copy/yank list                      |
|                | `<leader>rr`     | Refactoing                               |
| **LSP**                                                                      |
|                | `K`              | Manual                                   |
|                | `gd`             | Go to Definition                         |
|                | `gt`             | Go to type                               |
|                | `<leader>ft`     | Format                                   |
|                | `<leader>ca`     | Code action                              |
|                | `<leader>rf`     | Code references                          |
|                | `<leader>rn`     | Rename code throughout                   |
|                | `<leader>ds`     | Document symbols                         |
| **Line Movement**                                                            |
|                | `<A-Down>`       | Move line, block down                    |
|                | `<A-Up>`         | Move line, block up                      |
|                | `<A-Left>`       | Move words left                          |
| **Git**                                                                      |
|                | `<leader>gb`     | Git blame line toggle                    |
|                | `<C-g>`          | Lazygit launcher                         |
| **Terminal**                                                                 |
|                | `<C-\>`          | Terminal in default (float)              |
|                | `<C-h>`          | Terminal in horizontal mode              |
|                | `<C-v>`          | Terminal in vertical mode                |
| **Debugging**                                                                |
|                | `<leader>dt`     | Toggle break-point (debugging)           |
|                | `<leader>dc`     | Continue (debugging)                     |
| **Utility Keys**                                                             |
|                | `<leader>o`      | Oil file editor                          |
|                | `<C-s>`          | Take snapshot                            |
|                | `<leader>b`      | File explorer                            |
|                | `<leader>md`     | Toggle markdown preview                  |
|                | `<leader>hl`     | Remove highlights                        |
|                | `<S-Up>`         | Toggle word (true, false)                |
|                | `<leader>tr`     | Trim blank lines, space                  |
|                | `<leader>d`      | Close current buffer                     |

### Resources
[Vim Cheatsheet](https://vim.rtorr.com/)
