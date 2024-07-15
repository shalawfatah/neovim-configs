return {
  'moozd/aidoc.nvim',
  event = "VeryLazy",
  config = function()
    require('aidoc').setup({
      email = "shalaw.fatah@gmail.com",
      width = 65,
      keymap = "<S-M>",
    })
  end,
}
