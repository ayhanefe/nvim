return {
    "kyazdani42/nvim-tree.lua",
    opts = {
        hijack_cursor = true,
        view = {
            adaptive_size = true,
            width = 30,
            side = "left",
        },
        git = {
            enable = true, -- show git statuses
            ignore = false, -- still show .gitignored files
        },
    },
    keys = {
        { "<Leader>ee", "<cmd>NvimTreeToggle<CR>", desc = "toggle file browser" },
        { "<Leader>ef", "<cmd>NvimTreeFindFile<CR>", desc = "open file browser with current file showing" },
        { "<Leader>eR", "<cmd>NvimTreeRefresh<CR>", desc = "refresh file browser" },
    },
    cmd = { "NvimTreeToggle" },
}
