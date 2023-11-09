vim.g.mapleader = " "

vim.keymap.set("n", "<leader>q", "<Cmd>qa!<CR>", { desc = "Quit all without saving", silent = true })
vim.keymap.set("n", "<leader>W", "<Cmd>wqa<CR>", { desc = "Save and quit all", silent = true })

vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Focus window left" })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Focus window below" })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Focus window above" })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Focus window right" })
vim.keymap.set("n", "<leader>wd", "<C-w>q", { desc = "Close focused window" })
vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Create vertical split" })
vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Create horizontal split" })

vim.keymap.set("n", "<leader>bd", "<Cmd>bp|bd #<CR>", { desc = "Close buffer", silent = true })

vim.keymap.set("n", "<leader>ca", "<Cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "Code actions", silent = true })
