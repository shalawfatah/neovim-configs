-- AUTO PAIR FOR BRACES, CURLY BRACES, ETC
-- AUTO TAG FOR HTML 

return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },
  {
    "windwp/nvim-ts-autotag",
    ft = { "html" },
    lazy = true,
    config = true,
  },
}
