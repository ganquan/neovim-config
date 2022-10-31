-- set leader key to space
-- vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<cr>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<cr>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<cr>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<cr>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<cr>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<cr>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<cr>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<cr>") -- mapping to restart lsp if necessary

-- float terminal
keymap.set("n", "<leader>ft", "<cmd>FloatermToggle<cr>", { silent = true, desc = "toggle float terminal" })
keymap.set("t", "<leader>ft", "<C-\\><C-n><cmd>FloatermToggle<cr>", { silent = true, desc = "toggle float terminal" })


-- bufferline buffer navigation
keymap.set("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { silent = true, desc = "prev buffer" })
keymap.set("n", "]b", "<cmd>BufferLineCycleNext<cr>", { silent = true, desc = "next buffer" })


-- quickfix list naivigation
keymap.set("n", "[q", "<cmd>cprev<cr>", { silent = true, desc = "prev quicklist" })
keymap.set("n", "]q", "<cmd>cnext<cr>", { silent = true, desc = "next quicklist" })

-- vista list toggle
keymap.set("n", "<leader>tl", "<cmd>Vista!!<cr>", { silent = true, desc = "toggle Vista taglist" })
