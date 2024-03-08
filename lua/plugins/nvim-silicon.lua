return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	cmd = "Silicon",
	config = function()
		require("silicon").setup({
			-- Configuration here, or leave empty to use defaults
			font = "Anonymous Pro; Noto Emoji=34",
      theme = "Coldark-Dark",
      pad_horiz = 0,
	    pad_vert = 0,
      no_line_number = true,
		})
	end
}
