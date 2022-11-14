local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])



-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

return require('packer').startup(function(use)

    --------------------------------------------------------------------------------
    -- basic plugin
    --------------------------------------------------------------------------------
    -- it is recommended to put impatient.nvim before any other plugins
    use { 'lewis6991/impatient.nvim', config = [[require('impatient')]] }
    use { 'wbthomason/packer.nvim'}
    --------------------------------------------------------------------------------

    --------------------------------------------------------------------------------
    -- Programming Language related
    --------------------------------------------------------------------------------
    -- code completion
    use { 'onsails/lspkind-nvim', event = "VimEnter" }
    use { 'hrsh7th/nvim-cmp', 
                after = "lspkind-nvim",
                config = [[require('config.nvim-cmp')]] 
        }

    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/cmp-vsnip' }
    use { 'hrsh7th/vim-vsnip' }

    -- LSP
    use {'neovim/nvim-lspconfig', config = [[require('config.lsp')]] } 
    use { 'j-hui/fidget.nvim', 
                after = "nvim-lspconfig",
                config = [[require('config.fidget-nvim')]] 
        }

    use({
        "glepnir/lspsaga.nvim",
        branch = "main",
        after = "nvim-lspconfig",
        config = [[require('config.lspsaga')]] 
    })

    -- syntax highlight
    use { 'nvim-treesitter/nvim-treesitter',
                event = "BufEnter",
                run = function() require('nvim-treesitter.install')
                            .update({with_sync = true}) end,
                config = [[require('config.treesitter')]]
        }

    -- LSP symbols list
    use {'liuchengxu/vista.vim'}
    --------------------------------------------------------------------------------


    --------------------------------------------------------------------------------
    -- Git
    --------------------------------------------------------------------------------
    use { 'tpope/vim-fugitive', config = [[require('config.fugitive')]] }
    use { 'christoomey/vim-conflicted', requires = "tpope/vim-fugitive",
                cmd = {
                    "Conflicted"
                }
        }

    -- Show git change (change, delete, add) signs in vim sign column
    use { 'lewis6991/gitsigns.nvim', config = [[require('config.gitsigns')]] }
    --------------------------------------------------------------------------------


    --------------------------------------------------------------------------------
    -- Terminal
    --------------------------------------------------------------------------------
    use { 'voldikss/vim-floaterm' }
    --------------------------------------------------------------------------------


    --------------------------------------------------------------------------------
    -- Editor enhancement
    --------------------------------------------------------------------------------
    use {'mhinz/vim-startify'}
    use { 'sainnhe/gruvbox-material'}

    use {'kyazdani42/nvim-web-devicons'}

    use {'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true },
            config = [[require('config.lualine')]]
    }

    use {'akinsho/bufferline.nvim', event = "VimEnter",
            tag = "v3.*", 
            cond = firenvim_not_active,
            requires = 'kyazdani42/nvim-web-devicons',
            config = [[require('config.bufferline')]] 
    }

    use { "tpope/vim-commentary", event = "VimEnter" }      -- comment

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use {'nvim-tree/nvim-tree.lua',
            requires = {
                'nvim-tree/nvim-web-devicons', -- optional, for file icons
            },
            config = [[require('config.nvimtree')]] 
    }

    use("szw/vim-maximizer")
    use {'karb94/neoscroll.nvim',
            config = [[require('config.neoscroll')]] 
        }

    use { 'kevinhwang91/nvim-bqf', ft = "qf", config = [[require('config.bqf')]] }


    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = {{'nvim-lua/plenary.nvim'}} }
    -- search emoji and other symbols
    use { 'nvim-telescope/telescope-symbols.nvim', after = "telescope.nvim" }

    -- notification plugin
    use { 'rcarriga/nvim-notify',
                event = "BufEnter",
                config = function() vim.defer_fn(function() 
                    require("config.nvim-notify") end, 2000) end,
         }
    --------------------------------------------------------------------------------
    use {'ganquan/autocwd', config = [[require('config.autocwd')]] }

    
    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

