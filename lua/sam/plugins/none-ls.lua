return {
	"nvimtools/none-ls.nvim", -- new repo name, api name stays as null-ls
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.prettier,
			},
		})
	end
}
