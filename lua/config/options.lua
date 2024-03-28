-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

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
opt.foldcolumn = '1'
opt.fillchars = 'eob: ,fold: ,foldopen:,foldsep: ,foldclose:'
opt.foldlevelstart = 20
