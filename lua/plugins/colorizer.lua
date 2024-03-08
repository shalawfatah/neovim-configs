return {
  {
    "norcalli/nvim-colorizer.lua",
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
      require('lualine').setup({
        options = {
          theme = 'auto'
      }
    })
    end
  },
  	{
		"brenoprata10/nvim-highlight-colors",
		ft = { "css" },
		config = true,
		lazy = true,
	},
}
