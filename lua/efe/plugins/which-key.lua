return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	config = function()
		local wk = require("which-key")
		local map = vim.keymap.set

		wk.setup({
			triggers_nowait = { -- customized to remove commands that show registers
				-- marks
				"`",
				"'",
				"g`",
				"g'",
				-- spelling
				"z=",
			},
		})

		map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps" })
		map("n", "<leader>wk", function()
			vim.cmd("WhichKey " .. vim.fn.input("WhichKey: "))
		end, { desc = "whichkey query lookup" })
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	keys = { "<leader>", "<c-r>", "<c-w>", '"', "'", "`", "c", "v", "g" },
}
