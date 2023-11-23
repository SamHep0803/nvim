return {
	"pmizio/typescript-tools.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	config = function(
	)
		require("typescript-tools").setup({
			on_attach = function()
				local opts = { noremap = true, silent = true }

				opts.desc = "Organize imports"
				vim.keymap.set("n", "<leader>co", "<cmd>TSToolsOrganizeImports<CR><cmd>TSToolsAddMissingImports<CR>", opts)
			end
		})
	end
}
