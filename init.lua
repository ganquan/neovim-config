require('ganquan.core.options')
require('ganquan.core.keymaps')
require('ganquan.core.colorschemes')

local core_conf_files = {
  "autocommands.vim", -- various autocommands
  "plugins.vim", -- all the plugins installed and their configurations
}

-- source all the core config files
for _, name in ipairs(core_conf_files) do
  local path = string.format("%s/core/%s", vim.fn.stdpath("config"), name)
  local source_cmd = "source " .. path
  vim.cmd(source_cmd)
end

