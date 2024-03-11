-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.expandtab = true
opt.tabstop = 4
opt.clipboard = "unnamedplus"
opt.number = true
opt.fillchars = { eob = " " }
vim.g.mapleader = " "
vim.o.signcolumn = "yes"
