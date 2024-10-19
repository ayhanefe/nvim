return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		local keymap = vim.keymap

		harpoon:setup()

		keymap.set("n", "<leader>ha", function()
			harpoon:list():add()
		end)
		keymap.set("n", "<leader>hh", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		keymap.set("n", "<leader>1", function()
			harpoon:list():select(1)
		end)
		keymap.set("n", "<leader>2", function()
			harpoon:list():select(2)
		end)
		keymap.set("n", "<leader>3", function()
			harpoon:list():select(3)
		end)
		keymap.set("n", "<leader>4", function()
			harpoon:list():select(4)
		end)

		-- Toggle previous & next buffers stored within Harpoon list
		-- keymap.set("n", "<S-tab>", function()
		-- 	harpoon:list():prev()
		-- end)
		-- keymap.set("n", "<tab>", function()
		-- 	harpoon:list():next()
		-- end)
	end,
}
