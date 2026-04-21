return {
	{
		name = "hell",
		dir = vim.fn.expand("~/.config/omarchy/themes/hell/neovim"),
		lazy = false,
		priority = 1000,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "hell",
		},
	},
}
