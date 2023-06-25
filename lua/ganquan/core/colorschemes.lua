-- according to gruvbox-material help
-- set the termguicolors before set colorscheme
vim.opt.termguicolors = true

-- set the colorscheme
local colorscheme = "gruvbox-material"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

-- configuration for  gruvbox-material
vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_better_performance = 1

