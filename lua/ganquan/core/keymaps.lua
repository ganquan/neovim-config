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


-- bufferline buffer navigation
keymap.set("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { silent = true, desc = "prev buffer" })
keymap.set("n", "]b", "<cmd>BufferLineCycleNext<cr>", { silent = true, desc = "next buffer" })


-- quickfix list naivigation
keymap.set("n", "[q", "<cmd>cprev<cr>", { silent = true, desc = "prev quicklist" })
keymap.set("n", "]q", "<cmd>cnext<cr>", { silent = true, desc = "next quicklist" })

-- vista list toggle
keymap.set("n", "<leader>tl", "<cmd>Vista!!<cr>", { silent = true, desc = "toggle Vista taglist" })

-- 切换buffer
keymap.set("n", "<leader>1", "<cmd>lua require(\"bufferline\").go_to_buffer(1, true)<cr>", {silent = true})
keymap.set("n", "<leader>2", "<cmd>lua require(\"bufferline\").go_to_buffer(2, true)<cr>", {silent = true})
keymap.set("n", "<leader>3", "<cmd>lua require(\"bufferline\").go_to_buffer(3, true)<cr>", {silent = true})
keymap.set("n", "<leader>4", "<cmd>lua require(\"bufferline\").go_to_buffer(4, true)<cr>", {silent = true})
keymap.set("n", "<leader>5", "<cmd>lua require(\"bufferline\").go_to_buffer(5, true)<cr>", {silent = true})
keymap.set("n", "<leader>6", "<cmd>lua require(\"bufferline\").go_to_buffer(6, true)<cr>", {silent = true})
keymap.set("n", "<leader>7", "<cmd>lua require(\"bufferline\").go_to_buffer(7, true)<cr>", {silent = true})
keymap.set("n", "<leader>8", "<cmd>lua require(\"bufferline\").go_to_buffer(8, true)<cr>", {silent = true})
keymap.set("n", "<leader>9", "<cmd>lua require(\"bufferline\").go_to_buffer(9, true)<cr>", {silent = true})
keymap.set("n", "<leader>$", "<cmd>lua require(\"bufferline\").go_to_buffer(-1, true)<cr>", {silent = true})

-- 关闭buffer
-- explaination: 
-- %bd: close all buffer
-- bd#: close unnamed buffer
-- e#: open the last edit buffer
-- |: use pipe connect commands above
-- \: escape character for '|'
keymap.set("n", "<leader>xa", ":%bd<cr>", {silent = true, desc = "close all buffers"})
keymap.set("n", "<leader>xo", ":%bd|e#|bd#<cr>", {silent = true, desc = "close other buffers"})
keymap.set("n", "<leader>xc", ":bd<cr>", {silent = true, desc = "close current buffer"})

-- session管理
keymap.set("n", "<leader>lsn", ":SessionManager load_session<cr>", {silent = true, desc = "load session"})
keymap.set("n", "<leader>ssn", ":SessionManager save_current_session<cr>", {silent = true, desc = "save session"})
keymap.set("n", "<leader>dsn", ":SessionManager delete_session<cr>", {silent = true, desc = "delete session"})


-- window navigation:w
keymap.set("n", "<C-J>", "<C-W><C-J>", {silent = true})
keymap.set("n", "<C-K>", "<C-W><C-K>", {silent = true})
keymap.set("n", "<C-L>", "<C-W><C-L>", {silent = true})
keymap.set("n", "<C-H>", "<C-W><C-H>", {silent = true})

-- switch source and header
keymap.set("n", "<leader><F4>", ":ClangdSwitchSourceHeader<cr>", {silent = true, desc = "Switch Source Header"})

keymap.set("n", "<leader>jf", ":%!jq .<CR>", {silent = true, desc = "format json file use jq."})
