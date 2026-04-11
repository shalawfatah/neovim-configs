-- FORMATTERS
return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
        formatters_by_ft = {
            -- Web
            javascript = { "prettier" },
            typescript = { "prettier" },
            javascriptreact = { "prettier" },
            typescriptreact = { "prettier" },
            svelte = { "prettier" },
            html = { "prettier" },
            css = { "prettier" },
            json = { "prettier" },
            yaml = { "prettier" },
            markdown = { "prettier" },
            graphql = { "prettier" },
            -- Systems / config
            lua = { "stylua" },
            toml = { "taplo" },
            sql = { "sqlfmt" },
            sh = { "shfmt" },
            dockerfile = { "prettier" },
            -- Languages
            python = { "black" },
            php = { "prettier" },
            c = { "clang_format" },
            elixir = { "mix" },
            heex = { "mix" },
            eex = { "mix" },
            -- Fallback for anything else
            ["*"] = { "prettier" },
        },
        -- Format on save
        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true,
        },
    },
    keys = {
        {
            "<leader>ft",
            function()
                require("conform").format({ async = true, lsp_fallback = true })
            end,
            desc = "Format document",
        },
    },
}
