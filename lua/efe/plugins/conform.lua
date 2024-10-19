return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "goimports", "gofmt" },
				javascript = { { "prettierd", "prettier" } },
				typescript = { { "prettierd", "prettier" } },
				python = { "isort", "ruff_format" },
        cpp = { "clang_format" },
			},
		},
		config = function(_, opts)
			local keymap = vim.keymap

			require("conform").setup(opts)

			keymap.set("n", "<leader>fm", function()
				require("conform").format({ lsp_fallback = true })
			end, { desc = "format files" })
		end,
	},
}
