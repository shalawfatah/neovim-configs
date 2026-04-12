return {
  "neovim/nvim-lspconfig",
  event = "VeryLazy",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "nvimdev/lspsaga.nvim",
    {
      "saghen/blink.cmp",
      version = "*",
      opts = {
        keymap = {
          preset = "default",
          ["<Tab>"] = { "select_next", "fallback" },
          ["<S-Tab>"] = { "select_prev", "fallback" },
          ["<CR>"] = { "accept", "fallback" },
        },
        appearance = {
          use_nvim_cmp_as_default = true,
          nerd_font_variant = "mono",
        },
        sources = {
          default = { "lsp", "path", "snippets", "buffer" },
        },
        signature = { enabled = true },
      },
    },
  },
  config = function()
    local autoformat_filetypes = { "lua" }

    vim.diagnostic.config({
      virtual_text = true,
      severity_sort = true,
      float = { style = "minimal", border = "rounded" },
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "✘",
          [vim.diagnostic.severity.WARN] = "▲",
          [vim.diagnostic.severity.HINT] = "⚑",
          [vim.diagnostic.severity.INFO] = "»",
        },
      },
    })

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if not client then
          return
        end

        local bufopts = { buffer = args.buf }

        vim.keymap.set("n", "K", function()
          vim.lsp.buf.hover({ border = "rounded" })
        end, bufopts)
        vim.keymap.set({ "n", "i" }, "<C-k>", function()
          vim.lsp.buf.signature_help({ border = "rounded" })
        end, bufopts)

        if vim.tbl_contains(autoformat_filetypes, vim.bo[args.buf].filetype) then
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = args.buf,
            callback = function()
              vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
            end,
          })
        end
      end,
    })

    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "intelephense", "ts_ls", "eslint" },
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
        ["lua_ls"] = function()
          require("lspconfig").lua_ls.setup({
            settings = {
              Lua = {
                diagnostics = { globals = { "vim" } },
                workspace = { library = { vim.env.VIMRUNTIME } },
              },
            },
          })
        end,
      },
    })

    require("lspsaga").setup({
      ui = { border = "rounded", title = false },
      lightbulb = { enable = false },
      symbol_in_winbar = { enable = false },
    })
  end,
}
