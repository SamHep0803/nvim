return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
		"windwp/nvim-ts-autotag"
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = {
				enable = true
			},
			indent = {
				enable = true
			},
			autotag = {
				enable = true
			},
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"html",
				"css",
				"prisma",
				"markdown",
				"markdown_inline",
				"lua",
				"vim",
				"gitignore"
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-Space>",
					node_incremental = "<C-Space>",
					scope_incremental = false,
					node_decremental = "<bs>"
				}
			},
			contect_commentstring = {
				enable = true,
				enable_autocmd = false
			}
		})
	end
}
