-- Options are automatically loaded before lazy.nvim startup
-- Default options set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here, explain what the options do

local opt = vim.opt                                                 -- Local Variable

opt.expandtab = true                                                -- 
opt.tabstop = 2
opt.softtabstop = 2                                                 -- 
opt.shiftwidth = 2                                                  -- 
opt.clipboard = "unnamedplus"                                       --
opt.number = true                                                   -- Whether numbers appear or not 
vim.g.mapleader = " "                                               -- The leader key for your config
vim.o.signcolumn = "yes"                                            -- Sign columns like git 
opt.foldcolumn = '1'                                                -- 
opt.fillchars = 'eob: ,fold: ,foldopen:,foldsep: ,foldclose:'     -- Fold marks 
opt.foldlevelstart = 20                                             -- 
