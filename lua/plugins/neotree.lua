return {
  require("neo-tree").setup({
    window = {
      mappings = {
        ["o"] = "toggle_node",
      },
    },
    filesystem = {
      window = {
        mappings = {
          ["o"] = "open",
        },
      },
    },
  }),
}
