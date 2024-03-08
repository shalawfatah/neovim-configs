# NEOVIM ENVIRONMENT CONFIGURATION

### Preparation

- Install FiraCode Nerd Font
- Check if you have `zsh` if not, install it, make it `default shell`
- Use `starship` to change the terminal message
- Install `type-head autocompletion` for `zsh`
- Write `toggle_prompt` function in your shell

### Kitty Terminal

- Install Kitty Terminal
- Configure it

```jsx
font_family AnonymicePro Nerd Font
font_size 20
modify_font baseline 110%
window_border_width 1
hide_window_decorations yes
window_padding_width 16
inactive_text_alpha 0.1
background #282a36
```

### Neovim

- Install `Neovim`
- Install `LazyVim`
- write your `vim-options.lua`

**Plugins to install**

```jsx
- autopair.lua                // ()
- completions.lua             // ...
- neo-tree.lua                // file structure
- nvim-web-devicons.lua       // icons
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

```jsx
source %
TSUpdate
Mason
MasonUpdate
MasonInstall *-language-server
```

### Resources
https://github.com/miraculusik/dotfiles/blob/main/.config/nvim/init.lua
