# NEOVIM ENVIRONMENT CONFIGURATION

### Preparation

- Install [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip)
- Check if you have `Zsh` if not, install it, make it `default shell`
- Use [starship](https://starship.rs) to change the terminal prompt message
- Install [auto-complete](https://github.com/marlonrichert/zsh-autocomplete) for `zsh`
- Clone the above repo to to your root folder, `~/Repo`
- Copy this line in your `~/.zshrc`: `source ~/Repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh`
- Write `toggle_prompt` function in your shell

```bash
# TOGGLE PROMPT FUNCTION AND KEYBINDING
toggle_prompt_style() {
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
# modify_font cell_height 105%

# BORDER
window_border_width 1
hide_window_decorations yes
window_padding_width 40 16
active_border_color #4169E1
inactive_border_color #367588
inactive_text_alpha 0.1

# COLORS
background #282A36
```

### Neovim

- Install [Neovim](https://neovim.io/)
- Install [LazyVim](https://www.lazyvim.org/)
- write your `vim-options.lua`

**Plugins to install**

```bash
- autopair.lua
- completions.lua
- neo-tree.lua
- nvim-web-devicons.lua
- treesitter.lua
- grapple.lua
- noice-nvim.lua
- sessions.lua
- vim-visual-multi.lua
- catppuccin.lua
- lsp-config.lua
- none-ls.lua
- telescope.lua
- colorizer.lua
- lualine.lua
- nvim-silicon.lua
```

### Commands to Run

```bash
source %
TSUpdate
Mason
MasonUpdate
MasonInstall *-language-server
```

### Resources
https://github.com/miraculusik/dotfiles/blob/main/.config/nvim/init.lua
