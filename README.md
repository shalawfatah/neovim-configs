# NEOVIM ENVIRONMENT CONFIGURATION

### Preparation

- Install [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip)
- Check if you have `Zsh` if not, install it, make it `default shell`
- Use [starship](https://starship.rs) to change the terminal prompt message
- Install [auto-complete](https://github.com/marlonrichert/zsh-autocomplete) for `zsh`
- Clone the above repo to to your root folder, `~/Repo`
- Copy this line in your `~/.zshrc`: `source ~/Repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh`
- Write `toggle_prompt` function in your shell
- Install `ripgrep` for live search on `telescope` to work.

```bash
# TOGGLE PROMPT FUNCTION AND KEYBINDING
toggle_prompt() {
    if [ "$PS1" = "> " ]; then
        export PS1="$OLD_PS1"
    else
        export OLD_PS1="$PS1"
        export PS1="> "
    fi
}
```

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
- Install [LazyVim](https://www.lazyvim.org/)
- write your `keybindings` in `~/.config/nvim/lua/config/keymaps.lua` file
```bash
vim.api.nvim_set_keymap("n", "<leader>js", [[:!node %<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ts", [[:!tsc %<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><Enter>", [[:!npm run start<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>dev", [[:!npm run dev<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bd", [[:!npm run build<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>h", [[:nohl <CR>]], {})
vim.api.nvim_set_keymap("n", "<C-s>", ":Silicon<CR>", { noremap = true })
vim.api.nvim_set_keymap("v", "<C-s>", ":Silicon<CR>", { noremap = true })
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {})
```
- write your `options` in `~/.config/nvim/lua/config/options.lua`
```bash
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set number")
vim.o.signcolumn = "yes"
vim.opt.fillchars = { eob = " " }
vim.g.mapleader = " "
```

**Plugins to install**

```bash
auto-save.lua
completions.lua
neo-tree.lua
nvim-web-devicons.lua
trouble.lua
autopair.lua
gitlify.lua
neoscroll.lua
oil.lua
ufo.lua
catppuccin.lua
lsp-config.lua
noice-nvim.lua
sessions.lua
vim-visual-multi.lua
colorizer.lua
lualine.lua
none-ls.lua
telescope.lua
comment.lua
modes.lua
nvim-silicon.lua
treesitter.lua
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
| Modes                        | Operations in Insert Mode                                                                                                           |
|------------------------------|---------------------------------------------------------------------------------------------------------------------------------------|
| Movements & Motions          | `h` left, `j` down, `k` up, `l` right                                                                                               |
| Copy / Paste                 | `y` copy, `p` paste                                                                                                                  |
| Delete / Cut                 | `d` delete, `x` cut                                                                                                                  |
| Utilities                    | Repeat `.` , Undo `u`, Redo `<C-r>`, Change `c`, `q` quit, `w` save, `!` force                                                        |
| Auxiliary                    | `x` character, `xx` line, `0-9` number, `$` end, `.` beginning, `{}` paragraph up/down , `p:` paragraph, `i` inner, `a` a        |
| Speciality                   | `0` start of line, `_` before line starts, `e` end of word, `zz` centre view, `gg` top, `G` bottom, `%` go to opening/closing paragraph, `:!` run terminal commands |
| Replace                      | `:%s/old/new/g`, `:s/old/new/`, `r`                                                                                                  |
| Search / Find                | `:%s/pattern//g`, `, /`                                                                                                              |
| Normal Ops in Insert Mode    | `Ctrl + W` delete word, `Ctrl + u` delete to beginning of line, `Ctrl + o` do normal mode in insert mode                             |
### Features to be added

- [x] Live server
- [ ] Sharing and Remote control
- [x] Markdown reader
- [ ] Project and Workspace Management 
- [x] Search Word in entire project
- [ ] Learn about telescope
- [ ] Learn about Neovim, LazyVim
- [ ] Learn about Lua

### Resources
https://github.com/miraculusik/dotfiles/blob/main/.config/nvim/init.lua
