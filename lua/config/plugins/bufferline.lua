return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "buffers",
		},
	},
	config = function(_, opts)
		local keymap = vim.keymap

		require("bufferline").setup(opts)

	end,
}
