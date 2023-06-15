-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end


treesitter.setup ({
    -- A list of parser names, or "all"
    ensure_installed = { "c", "lua", "cpp", "vim", "json", "gitignore", "markdown" },
    -- ensure_installed = "all",

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    -- List of parsers to ignore installing (for "all")
    ignore_install = { "javascript" },

    highlight = {
        enable = true,
    },

    autotag = { enable = true },
    indent = { enable = true }
})
