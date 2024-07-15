-- AUTO PAIR FOR BRACES, CURLY BRACES, ETC
-- AUTO TAG FOR HTML

return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-treesitter.configs").setup({
        autotag = {
          enable = true,
        }
      })
    end
  },
}
