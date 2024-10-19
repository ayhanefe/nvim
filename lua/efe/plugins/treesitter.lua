return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				-- enable syntax highlighting
				highlight = {
					enable = true, -- false will disable the whole extension
					disable = {}, -- list of languages that will be disabled
					use_languagetree = true,
				},
				-- enable indentation
				indent = { enable = true },
				-- enable autotagging (w/ nvim-ts-autotag plugin)
				autotag = {
					enable = true,
				},
				ensure_installed = "all", -- "all" or list of languages
			})
		end,
	},
}
