vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- window
keymap.set("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- movement
keymap.set("i", "<C-b>", "<ESC>^i", { desc = "move to beginning of line" })
keymap.set("i", "<C-e>", "<End>", { desc = "move to end of line" })
keymap.set("i", "<C-h>", "<Left>", { desc = "move left" })
keymap.set("i", "<C-l>", "<Right>", { desc = "move right" })
keymap.set("i", "<C-j>", "<Down>", { desc = "move down" })
keymap.set("i", "<C-k>", "<Up>", { desc = "move up" })

-- buffers
keymap.set("n", "<tab>", "<cmd>bnext<CR>", { desc = "move to next buffer" })
keymap.set("n", "<S-tab>", "<cmd>bprev<CR>", { desc = "move to next buffer" })
keymap.set("n", "<leader>x", "<cmd>bd<CR>", { desc = "move to next buffer" })

-- comment
keymap.set("n", "<leader>/", "gcc", { desc = "comment toggle", remap = true })
keymap.set("v", "<leader>/", "gc", { desc = "comment toggle", remap = true })

-- line numbers
keymap.set("n", "<leader>nn", "<cmd>set nu!<CR>", { desc = "toggle line number" })
keymap.set("n", "<leader>nr", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })

-- file operations
keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "file save" })
keymap.set("n", "<C-c>", "<cmd>%y+<CR>", { desc = "file copy whole" })
