return {
        "michaelrommel/nvim-silicon",
        lazy = true,
        cmd = "Silicon",
        config = function()
                require("silicon").setup({
                        font = "FiraCode Nerd Font Mono; Noto Emoji=34",
                        theme = "Coldark-Dark",
                        pad_horiz = 0,
                        pad_vert = 0,
                        line_pad = 4,
                        no_line_number = true,
                        output = function()
                                return "~/Desktop/" .. os.date("!%Y-%m-%dT%H-%M-%S") .. "_code.png"
                        end,
                })
        end,
}
