-- Lazy.nvim PACKAGE MANAGER CONFIGURATION

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Function to check and install Lazy.nvim
local function install_lazy_nvim()
  if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable",
      lazypath,
    })
    vim.cmd("packadd lazy.nvim")
  end
end

-- Install Lazy.nvim if not present
install_lazy_nvim()

-- Set runtime path for Lazy.nvim
vim.opt.rtp:prepend(lazypath)

-- Load configurations
require("config/options")
require("config/keymaps")
require("config/autocmds")
require("lazy").setup("plugins")
