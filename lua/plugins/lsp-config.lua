local opts = { noremap = true, silent = true, nowait = true }
local buf = ":lua vim.lsp.buf." -- BUFFER RELATED COMMANDS

return {
  -- Mason for managing LSP servers
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    config = true,
  },
  -- Mason-LSPConfig for LSP server integration
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
  -- LSP configurations
  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      local servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = { globals = { "vim", "plugins" } },
            },
          },
        },
        tsserver = {},
        eslint = {},
        pyright = {},
        intelephense = {
          flags = {
            debounce_text_changes = 150,
          },
          settings = {
            intelephense = {
              environment = {
                phpVersion = "8.2",
                composerJsonPath = "./composer.json",
              },
              files = {
                associations = {
                  "*.php",
                },
              },
            },
          },
        },
        clangd = {
          cmd = { "clangd", "--offset-encoding=utf-16" },
        },
        elixirls = {
          cmd = { "elixir-ls" },
        },
      }

      for server, config in pairs(servers) do
        lspconfig[server].setup(vim.tbl_deep_extend("force", { capabilities = capabilities }, config))
      end
    end,
  },
  -- LSP Saga for enhanced LSP UI
  {
    "nvimdev/lspsaga.nvim",
    event = "VeryLazy",
    keys = {
      -- LSP Saga keybindings
      { "n", "gd", ":Lspsaga peek_definition<CR>", opts }, -- Peek definition
      { "n", "K",  ":Lspsaga hover_doc<CR>",       opts }, -- Hover documentation
    },
    config = function()
      require('lspsaga').setup({
        ui = {
          code_action = "",
        },
      })
    end,
  },
  -- Keybindings for LSP functionalities
  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    config = function()
      local key = vim.keymap.set

      -- Keybindings for LSP
      key("n", "gt", buf .. "type_definition()<CR>", opts)                    -- WHAT IS THE TYPE OF THE CODE
      key("n", "<leader>ft", buf .. "format()<CR>", opts)                      -- FORMAT CODE
      key("n", "<leader>ca", buf .. "code_action()<CR>", opts)                -- CODE ACTION IS AVAILABLE
      key("n", "<leader>rn", buf .. "rename()<CR>", opts)                     -- RENAME THE CODE IN ALL PLACES
      key("i", "<C-Enter>", buf .. "completion()<CR>", opts)                  -- CODE COMPLETION
      key("n", "<leader>ds", buf .. "document_symbol()<CR>", opts)            -- DECLARED VARS, FUNCS, CLASSES
    end,
  },
}
