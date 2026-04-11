return {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        -- Autocompletion
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lua",
        -- Snippets
        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets",
        -- LSP UI
        "nvimdev/lspsaga.nvim",
    },
    config = function()
        local autoformat_filetypes = { "lua" }

        -- Diagnostics
        vim.diagnostic.config({
            virtual_text = true,
            severity_sort = true,
            float = {
                style = "minimal",
                border = "rounded",
                header = "",
                prefix = "",
            },
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "✘",
                    [vim.diagnostic.severity.WARN] = "▲",
                    [vim.diagnostic.severity.HINT] = "⚑",
                    [vim.diagnostic.severity.INFO] = "»",
                },
            },
        })

        -- LSP on_attach
        local function on_attach(client, bufnr)
            local ft = vim.bo[bufnr].filetype -- ✅ was: nvim_buf_get_option
            if ft == "oil" then
                client.stop()
                return
            end
        end

        -- Autoformat + hover/signature borders via LspAttach
        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(args)
                local client = vim.lsp.get_client_by_id(args.data.client_id)
                if not client then
                    return
                end

                local bufopts = { buffer = args.buf }

                -- ✅ Border for hover (replaces vim.lsp.with + vim.lsp.handlers)
                vim.keymap.set("n", "K", function()
                    vim.lsp.buf.hover({ border = "rounded" })
                end, bufopts)

                -- ✅ Border for signature help (replaces vim.lsp.handlers.signature_help)
                vim.keymap.set({ "n", "i" }, "<C-k>", function()
                    vim.lsp.buf.signature_help({ border = "rounded" })
                end, bufopts)

                -- Autoformat on save
                if vim.tbl_contains(autoformat_filetypes, vim.bo[args.buf].filetype) then
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        buffer = args.buf,
                        callback = function()
                            vim.lsp.buf.format({
                                formatting_options = { tabSize = 4, insertSpaces = true },
                                bufnr = args.buf,
                                id = client.id,
                            })
                        end,
                    })
                end
            end,
        })

        -- LSP capabilities with cmp
        local lspconfig_defaults = require("lspconfig").util.default_config
        lspconfig_defaults.capabilities =
            vim.tbl_deep_extend("force", lspconfig_defaults.capabilities, require("cmp_nvim_lsp").default_capabilities())

        -- Mason setup
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "intelephense", "ts_ls", "eslint" },
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({ on_attach = on_attach })
                end,
                lua_ls = function()
                    require("lspconfig").lua_ls.setup({
                        on_attach = on_attach,
                        settings = {
                            Lua = {
                                runtime = { version = "LuaJIT" },
                                diagnostics = { globals = { "vim" } },
                                workspace = { library = { vim.env.VIMRUNTIME } },
                            },
                        },
                    })
                end,
            },
        })

        -- cmp setup
        local cmp = require("cmp")
        require("luasnip.loaders.from_vscode").lazy_load()
        vim.opt.completeopt = { "menu", "menuone", "noselect" }

        cmp.setup({
            preselect = "item",
            completion = { completeopt = "menu,menuone,noinsert" },
            window = { documentation = cmp.config.window.bordered() },
            sources = {
                { name = "path" },
                { name = "nvim_lsp" },
                { name = "buffer",  keyword_length = 3 },
                { name = "luasnip", keyword_length = 2 },
            },
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },
            formatting = {
                fields = { "abbr", "menu", "kind" },
                format = function(entry, item)
                    local source = entry.source.name
                    item.menu = source == "nvim_lsp" and "[LSP]" or string.format("[%s]", source)
                    return item
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<CR>"] = cmp.mapping.confirm({ select = false }),
                ["<C-f>"] = cmp.mapping.scroll_docs(5),
                ["<C-u>"] = cmp.mapping.scroll_docs(-5),
                ["<C-e>"] = cmp.mapping(function()
                    if cmp.visible() then
                        cmp.abort()
                    else
                        cmp.complete()
                    end
                end),
                ["<Tab>"] = cmp.mapping(function(fallback)
                    local col = vim.fn.col(".") - 1
                    if cmp.visible() then
                        cmp.select_next_item({ behavior = "select" })
                    elseif col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
                        fallback()
                    else
                        cmp.complete()
                    end
                end, { "i", "s" }),
                ["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = "select" }),
                ["<C-d>"] = cmp.mapping(function(fallback)
                    local luasnip = require("luasnip")
                    if luasnip.jumpable(1) then
                        luasnip.jump(1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                ["<C-b>"] = cmp.mapping(function(fallback)
                    local luasnip = require("luasnip")
                    if luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            }),
        })

        -- Lspsaga setup
        require("lspsaga").setup({
            ui = { border = "rounded", title = false },
            lightbulb = { enable = false },
            symbol_in_winbar = { enable = false },
            use_default_ui = true,
        })
    end,
}
