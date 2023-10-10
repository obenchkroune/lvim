-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
local opt = vim.opt

opt.expandtab = false
opt.shiftwidth = 4
opt.smartindent = false
opt.tabstop = 4
opt.softtabstop = 4

vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set scrolloff=999")
vim.cmd("set nuw=5")

lvim.colorscheme = "catppuccin"

lvim.plugins = {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000
	}
}
