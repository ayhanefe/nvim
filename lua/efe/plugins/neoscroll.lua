return {
	"karb94/neoscroll.nvim",
	config = function()
		require("neoscroll").setup({
			easing = "quadratic",
		})
	end,
}
