return {
    "cbochs/grapple.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},
    config = function()
        vim.keymap.set("n", "<leader>m", require("grapple").toggle)
    end
}
