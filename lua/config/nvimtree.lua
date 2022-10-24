local keymap = vim.keymap

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = { custom = { "^.git$" } }
})

keymap.set("n", "<space>s", function()
  return require("nvim-tree").toggle(false, true)
end, { silent = true, desc = "toggle nvim-tree" })
