return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- Lua
		vim.keymap.set("n", "<leader>cc", function() require("trouble").toggle() end)
		vim.keymap.set("n", "<leader>cw", function() require("trouble").toggle("workspace_diagnostics") end)
		vim.keymap.set("n", "<leader>cd", function() require("trouble").toggle("document_diagnostics") end)
		vim.keymap.set("n", "<leader>cq", function() require("trouble").toggle("quickfix") end)
		vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
	end
}
