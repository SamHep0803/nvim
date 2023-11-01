return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		vim.keymap.set("n", "<TAB>", "<Cmd>BufferLineCycleNext<CR>", { silent = true, desc = "Focus next tab" })
		vim.keymap.set("n", "<S-TAB>", "<Cmd>BufferLineCyclePrev<CR>", { silent = true, desc = "Focus prev tab" })

		require("bufferline").setup({
			options = {
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and " " or ""
					return " " .. icon .. count
				end
			}
		})
	end
}
