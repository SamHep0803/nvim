return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function ()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = {"truncate "},
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>",  { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<CR>",  { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>",  { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>",  { desc = "Find string in cwd" })

	end
}



