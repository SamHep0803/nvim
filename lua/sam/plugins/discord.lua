return {
	'andweeb/presence.nvim',
	config = function()
		require("presence").setup({
			main_image = "file",
			blacklist = { "dimension" }
		})
	end
}
