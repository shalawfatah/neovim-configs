# NEOVIM ENVIRONMENT CONFIGURATION
This is an attempt to build a full IDE through neovim and its environment using `lazy.nvim` package manager. This IDE will not only replace your current IDE features, but adds to them. 
Some images from the the final configuration:

<section style="display:flex; flex-direction:row; gap: 10px; flex-wrap:wrap; ">
    <img src="https://i.imgur.com/FlpUkQy.png" width="250" title="Neovim dashboard using alpha.nvim">
    <img src="https://i.imgur.com/mu7XO4y.png" width="250" title="Using Starship for better prompts">
    <img src="https://i.imgur.com/FGvkML2.png" width="250" title="Lazygit integration">
    <img src="https://i.imgur.com/6yJ6Cp8.png" width="250" title="Telescope used for search ">
    <img src="https://i.imgur.com/QtPj2Wz.png" width="250" title="Telescope is used as a file explorer">
    <img src="https://i.imgur.com/btBOlX2.png" width="250" title="Main editor, neovim">
</section>

### Features
The final config has these features provided by the mentioned plugins: 

- [x] The IDE loads under 40ms.
- [x] List projects/workspaces `<leader>w`, files `<leader>p`, search words `<leader>lg` using Telescope.
- [x] Undo history using telescope and undo extension `<leader>u`. 
- [x] Yank history using telescope and yank plugin `<leader>y`.
- [x] Integrated terminal using toggleterm plugin, with float `<C-\>`, vertical and horizontal choices.
- [x] A file editor using oil nvim plugin `<leader>o`, which uses same vim motions. 
- [x] Git management, including logs, signs, conflicts and blame using different plugins 
- [x] Easy motion using Leap.nvim plugin `<s-two letters>`. Moving lines and words up and down `<S-Up/Down>`.
- [x] Zen mode `<S-H>`, turns off statusline, everything is grayed out except the working paragraph.
- [x] Different LSP providers including JS,TS, Go and Python.
- [x] Linters for JS, TS, Golang and Python using treesitter.
- [x] A completion engine using nvim-cmp.
- [x] Formatting different languages using lua formatter `<leader>ft`, trimmer to trim trailing spaces. 
- [x] Code snippets and suggestion using lsp and nvim-cmp, that can be extended. 
- [x] Debugger for Golang and Javascript 
- [x] Folding and unfolding using the nvim-ufo plugin `<za>`, hiding/unhiding nested fold numbers.
- [x] Auto-save functionality.
- [x] Multi-cursor using visual-multi plugin 
- [x] Manage sessions using Tmux
- [x] Screenshot of full page and partial code using silicon `<C-s>` 
- [x] File explorer through neo-tree plugin `<leader>b`
- [x] The ability to rename `<leader>rn`, find references `<leader>rf` throughout the project, along with symbol tree `<leader>ds`, etc.
- [x] Marking and demakring files have better UI experience with mark column icons.`<m&letter>` 
- [x] A customizable look for the dashboard, with lua statusline, smooth scrolling experience.  
- [x] A big file management plugin to work with large files 
- [x] Show open buffers `<leader>bf` using Telescope, close buffer `<leader>d`.
- [x] Markdown preview through a plugin `<leader>md`
- [x] Auto pairs and tags using two different plugins 
- [x] Pair programming and sharing code using a plugin, along with live server.
- [x] Set up documentation using a plugin 
- [x] Commenting and un-commenting lines, blocks using a plugin `<leader>/`. 
- [x] Ability to open URLs using a plugin 
- [x] Storing, re-using and managing macros using a plugin 
- [x] Notification system using noice plugin, improving Vim Select and Inpu interfaces.
- [x] Just in time action and reference hints using a plugin 
- [x] Toggling words to opposite, like `true` to `false` and `<` to `>`, can be added into
- [x] The ability to refactor code using refactoring plugin. 

### Planned Features 
- [x] Add persistence to yank and undo history using SQLITE
- [x] Add persistence to opposite word list using SQLITE
- [x] Manage sessions better using Tmux
- [x] Refactoring and how it woks 
- [x] Debugger functionality test 
- [x] Saving and Re-using macros, test for persistence
- [x] Test documentation 

### How To

- Install [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip)
- Check if you have `Zsh` if not, install it, make it `default shell`
- Install [auto-complete](https://github.com/marlonrichert/zsh-autocomplete) for `zsh`
- Clone the above repo to to your root folder, `~/Repo`
- Copy this line in your `~/.zshrc`: `source ~/Repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh`
- Install `ripgrep` for live search on `telescope` to work.
- Install `lazygit` if you want to use the lazygit plugin. 
- Install `make` for `fzf` on `telescope` on linux.
- Install Tmux `brew install tmux` 

### Alacritty Setup  

- Install [Alacritty](https://github.com/alacritty/alacritty?tab=readme-ov-file) terminal emulator
- Create ~/.alacritty.toml 
- Paste this [alacrity configuration](https://gist.github.com/shalawfatah/635397d3d04d2e834e9e5f440f61cc14) 

### Starship Prompt 
- Use [starship](https://starship.rs) to change the terminal prompt message
- Create `~/.config/starship.toml`
- Copy and paste this [starship profile](https://gist.github.com/shalawfatah/c9c6fdcfb89d904981b795698cc625c1)
- Run `source ~/.config/starship.toml` 

### Tmux 
- Install [Tmux](https://github.com/tmux/tmux/wiki/Installing) 
- Create ~/.tmux.conf and configure it. 
- Copy and paste this [tmux profile](https://gist.github.com/shalawfatah/4e99cbbc9cdb519eb2b7e7ec7ffdf369)
- Run `~/.tmux/plugins/tpm/bin/install_plugins`
- Run `tmux source-file ~/.tmux.conf`
- Test it with `tmux`

### Neovim

- Install [Neovim](https://neovim.io/)
- Install [Lazy.nvim](https://github.com/folke/lazy.nvim) package manager
- write your `keybindings` in `~/.config/nvim/lua/config/keymaps.lua` file
- write your `options` in `~/.config/nvim/lua/config/options.lua`

**Plugins to install**
- Check the `lua/plugins` directory in this repository and install all the plugins 
- Use `Lazy` command and press `Shift + S` to sync your plugin manager.
- You might need to hit `Mason` and install necessary formatters, linters and LSPs. 
- Quit `nvim` and restart again for plugins to take effect. 

### Keybindings
- Some normal vim keybindings are used along with some custom and plugin provided ones 
- For the list of all keybindings, check this [keybinding list](https://gist.github.com/shalawfatah/295e1ee56fd321843f7c6c21a1a5c134)

### Resources
[Vim Cheatsheet](https://vim.rtorr.com/)
