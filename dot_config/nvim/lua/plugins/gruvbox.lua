return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	opts = { ... },
	config = function()
		require("gruvbox").setup({
			terminal_colors = true,
		})

		vim.o.termguicolors = true
		vim.o.background = "dark"
		vim.cmd([[colorscheme gruvbox]])
	end,
}
