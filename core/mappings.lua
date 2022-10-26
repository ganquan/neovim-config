local keymap = vim.keymap
local api = vim.api
local uv = vim.loop

keymap.set("n", "<leader>tl", "<cmd>Vista!!<cr>", { silent = true, desc = "toggle Vista taglist" })
keymap.set("n", "<leader>tr", "<cmd>NvimTreeToggle<cr>", { silent = true, desc = "toggle Nvim-tree" })

local builtin = require('telescope.builtin')
keymap.set('n', 'ff', builtin.find_files, {})
keymap.set('n', 'fg', builtin.live_grep, {})
keymap.set('n', 'fb', builtin.buffers, {})
keymap.set('n', 'fh', builtin.help_tags, {})


keymap.set("n", "<leader>ft", "<cmd>FloatermToggle<CR>", { silent = true, desc = "toggle float terminal" })
keymap.set("t", "<leader>ft", "<C-\\><C-n><cmd>FloatermToggle<CR>", { silent = true, desc = "toggle float terminal" })


-- bufferline buffer navigation
keymap.set("n", "[b", "<cmd>BufferLineCycleNext<cr>", { silent = true, desc = "next buffer" })
keymap.set("n", "b]", "<cmd>BufferLineCyclePrev<cr>", { silent = true, desc = "prev buffer" })
