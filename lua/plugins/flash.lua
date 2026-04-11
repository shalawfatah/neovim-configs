-- NAVIGATE BUFFER WITH SEARCH LABELS
--  HIT s THEN CHAR YOU LOOKING FOR, THEN CHAR THAT APPEARS

return {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
        {
            "s",
            mode = { "n", "x", "o" },
            function()
                require("flash").jump()
            end,
            desc = "Flash",
        },
    },
}
