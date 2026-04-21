return {
	{
		name = "sanctuary",
		dir = vim.fn.expand("~/.config/omarchy/themes/sanctuary/neovim"),
		lazy = false,
		priority = 1000,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "sanctuary",
		},
	},
}
