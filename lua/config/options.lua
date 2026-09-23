local opt = vim.opt

opt.number = true
opt.relativenumber = false

opt.mouse = "a"
opt.clipboard = "unnamedplus"

opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true

opt.cursorline = true
opt.signcolumn = "yes"

opt.splitright = true
opt.splitbelow = true

opt.scrolloff = 8
opt.sidescrolloff = 8

opt.undofile = true

opt.timeoutlen = 300
opt.updatetime = 250

opt.wrap = false

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
