local keymap = vim.keymap
local api = vim.api
local uv = vim.loop

keymap.set("n", "<leader>tl", "<cmd>Vista!!<cr>", { silent = true, desc = "toggle Vista taglist" })
keymap.set("n", "<leader>tr", "<cmd>NvimTreeToggle<cr>", { silent = true, desc = "toggle Nvim-tree" })

local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})


keymap.set("n", "<leader>ft", "<cmd>FloatermToggle<CR>", { silent = true, desc = "toggle float terminal" })
keymap.set("t", "<leader>ft", "<C-\\><C-n><cmd>FloatermToggle<CR>", { silent = true, desc = "toggle float terminal" })
