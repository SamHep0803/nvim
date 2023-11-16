return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- Lua
		vim.keymap.set("n", "<leader>cc", function() require("trouble").toggle() end, { desc = "toggle trouble" })
		vim.keymap.set("n", "<leader>cw", function() require("trouble").toggle("workspace_diagnostics") end,
			{ desc = "toggle workspace diagnostics" })
		vim.keymap.set("n", "<leader>cd", function() require("trouble").toggle("document_diagnostics") end,
			{ desc = "toggle document diagnostics" })
		vim.keymap.set("n", "<leader>cq", function() require("trouble").toggle("quickfix") end, { desc = "quickfix" })
		vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end, { desc = "lsp references" })
	end
}
