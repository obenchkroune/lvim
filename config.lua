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

-- load the 42 std header
vim.cmd("source ~/.config/lvim/stdheader.vim")

lvim.colorscheme = "catppuccin"
-- lvim.format_on_save.enabled = true
lvim.builtin.treesitter.autotag.enable = true

lvim.plugins = {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000
	},
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"windwp/nvim-ts-autotag"
		},
		opts = {
			ensure_installed = {
				-- defaults
				"vim",
				"lua",
				"markdown",

				"html",
				"css",
				"javascript",
				"typescript",
				"json",
				"c_sharp",
				"sql",
				"yaml",
				"xml",
				"tsx",
			},
			autotag = {
				enable = true
			},
		},
	},
	{
		"windwp/nvim-ts-autotag",
		dependencies = "nvim-treesitter/nvim-treesitter",
		config = function()
			require('nvim-ts-autotag').setup({
				-- your config
			})
		end,
		lazy = true,
		event = "VeryLazy"
	},
}

-- custom keymaps

lvim.keys.insert_mode["<C-e>"] = "<End>"
lvim.keys.insert_mode["<C-h>"] = "<Left>"
lvim.keys.insert_mode["<C-j>"] = "<Down>"
lvim.keys.insert_mode["<C-k>"] = "<Up>"
lvim.keys.insert_mode["<C-l>"] = "<Right>"
