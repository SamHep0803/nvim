return {
	'nvim-orgmode/orgmode',
	dependencies = {
		{ 'nvim-treesitter/nvim-treesitter', lazy = true },
		{ "akinsho/org-bullets.nvim" }
	},
	event = 'VeryLazy',
	config = function()
		-- setup org bullets
		require("org-bullets").setup()

		-- Load treesitter grammar for org
		require('orgmode').setup_ts_grammar()

		-- Setup treesitter
		require('nvim-treesitter.configs').setup({
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = { 'org' },
			},
			indent = {
				enable = true
			},
			ensure_installed = { 'org' },
		})

		-- Setup orgmode
		require('orgmode').setup({
			org_agenda_files = '~/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org/**/*',
			org_default_notes_file = '~/Library/Mobile Documents/iCloud~com~appsonthemove~beorg/Documents/org/refile.org',
			org_todo_words = { 'TODO(t)', 'STRT', '|', 'DONE' },
			org_blank_before_new_entry = {
				heading = false
			}
		})
	end,
}
