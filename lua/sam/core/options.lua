local opt = vim.opt

opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.timeoutlen = 1000
opt.completeopt = "menuone,noselect"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.autoindent = true
opt.smartindent = true
opt.wrap = false
-- opt.cmdheight = 2
opt.fileencoding = "utf-8"
opt.mouse = "a"
opt.ignorecase = true
opt.smartcase = true
opt.number = true
opt.relativenumber = true
opt.numberwidth = 4
opt.pumheight = 10
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.whichwrap:append("b,s,<,>,[,],h,l")
opt.shortmess:append("c")
opt.showmode = false
opt.clipboard = "unnamedplus"
opt.swapfile = false
opt.cursorline = true
opt.conceallevel = 0
opt.signcolumn = "yes"
opt.undofile = true
opt.expandtab = false
opt.guicursor = "n-v-c-i:block"
opt.concealcursor = 'nc'
