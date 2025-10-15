return {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    keys = {
        { "n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>" },
    },
    config = function()
        require("gitsigns").setup({
            signs = {
                add = { text = " +" },
                change = { text = " ~" },
                delete = { text = " ✗" },
                untracked = { text = " ┆" }
            },
        })
    end,
}
