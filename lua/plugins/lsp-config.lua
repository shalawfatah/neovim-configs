-- LANGUAGE SERVER PROTOCOLS

return {
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        lazy = false,
        opts = {
          auto_install = true,
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = { globals = { "vim", "plugins" } },
          },
        },
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })
      lspconfig.eslint.setup({
        capabilities = capabilities,
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })
      lspconfig.intelephense.setup({
        capabilities = capabilities,
        flags = {
          debounce_text_changes = 150,
        },
        settings = {
          intelephense = {
            environment = {
              phpVersion = "8.2", -- Adjust to your PHP version
              composerJsonPath = "./composer.json",
            },
            files = {
              associations = {
                "*.php",
              },
            },
          },
        },
      })
      lspconfig.clangd.setup({
        capabilities = capabilities,
        cmd = {
          "clangd",
          "--offset-encoding=utf-16",
        },
      })
    end,
  },
  {
    'nvimdev/lspsaga.nvim',
    event = "VeryLazy",
    config = function()
      require('lspsaga').setup({
        ui = {
          code_action = ""
        }
      })
    end,
  },
}
