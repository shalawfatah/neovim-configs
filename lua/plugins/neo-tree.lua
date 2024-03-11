return {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
                "nvim-lua/plenary.nvim",
                "nvim-tree/nvim-web-devicons",
                "MunifTanjim/nui.nvim",
        },
        config = function()
                vim.keymap.set("n", "<C-b>", ":Neotree filesystem toggle<CR>", {})
                vim.keymap.set("v", "<C-b>", ":Neotree filesystem toggle<CR>", {})
                require("neo-tree").setup({
                        window = {
                                width = 20,
                        },
                })
        end,
}
