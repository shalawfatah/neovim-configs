-- Lazy.nvim PACKAGE MANAGER CONFIGURATION

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

require("config/options")
require("config/keymaps")
require("config/autocmds")
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
