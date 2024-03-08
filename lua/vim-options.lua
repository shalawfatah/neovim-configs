vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set number")
vim.o.signcolumn = "yes"
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<leader><Enter>', [[:!node %<CR>]], { noremap = true, silent = true })
vim.opt.fillchars = { eob = " " }
vim.api.nvim_set_keymap('n', '<leader>h', [[:nohl <CR>]], {})
vim.api.nvim_set_keymap('n', '<leader>sv', [[:vsplit <CR>]], {})
vim.api.nvim_set_keymap('n', '<leader>sh', [[:split <CR>]], {})
vim.api.nvim_set_keymap('n', '<leader>svn', [[:vnew <CR>]], {})
vim.api.nvim_set_keymap('n', '<leader>shn', [[:new <CR>]], {})
vim.api.nvim_set_keymap('n', '<C-s>', ':Silicon<CR>', {noremap = true})
vim.api.nvim_set_keymap('v', '<C-s>', ':Silicon<CR>', {noremap = true})
