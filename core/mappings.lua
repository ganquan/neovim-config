local keymap = vim.keymap
local api = vim.api
local uv = vim.loop

keymap.set("n", "<leader>tl", "<cmd>Vista!!<cr>", { silent = true, desc = "toggle Vista taglist" })
keymap.set("n", "<leader>tr", "<cmd>NvimTreeToggle<cr>", { silent = true, desc = "toggle Nvim-tree" })
