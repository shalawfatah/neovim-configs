local opt = vim.opt

opt.expandtab = true -- Use spaces instead of tabs for indentation
opt.tabstop = 2 -- Number of spaces per tab
opt.softtabstop = 2 -- Number of spaces when editing
opt.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent
opt.clipboard = "unnamedplus" -- Use system clipboard
opt.number = true -- Show line numbers
opt.relativenumber = true
vim.g.mapleader = " " -- Set the leader key for your config
vim.o.signcolumn = "yes" -- Show sign columns like Git
opt.foldcolumn = "1" -- Show one column for folding
opt.fillchars = "eob: ,fold: ,foldopen:,foldsep: ,foldclose:" -- Customize fold marks
opt.foldlevelstart = 20 -- Start folding at level 20
opt.arabicshape = false

vim.cmd([[
  set notermguicolors
]])

vim.api.nvim_set_hl(0, "Comment", { ctermfg = 8, nocombine = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { ctermfg = "red" })

vim.api.nvim_set_hl(0, "LineNrRelative", { ctermfg = 236 }) -- off-white-ish
vim.api.nvim_set_hl(0, "LineNr", { ctermfg = 7 }) -- absolute line number in white
