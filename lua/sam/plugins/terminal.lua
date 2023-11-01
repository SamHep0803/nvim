return {
	'akinsho/toggleterm.nvim',
	version = "*",
	config = function()
		vim.keymap.set("n", "<leader>ot", "<Cmd>ToggleTerm<CR>", { silent = true, desc = "Toggle terminal" })
		vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", { silent = true, desc = "Escape terminal mode" })

		require("toggleterm").setup({})
	end
}
