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

return require('packer').startup(function(use)
    -- it is recommended to put impatient.nvim before any other plugins
    use { 'lewis6991/impatient.nvim', config = [[require('impatient')]] }

    use {'wbthomason/packer.nvim'}
    -- My plugins here

    use {'neovim/nvim-lspconfig', config = [[require('config.lsp')]] } -- Configurations for Nvim LSP
    use {'mhinz/vim-startify'}
    use {'tomasiser/vim-code-dark'}
    use {'sainnhe/gruvbox-material'}

    use {'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true },
            config = [[require('config.lualine')]]
    }

    use {'nvim-treesitter/nvim-treesitter',
            event = "BufEnter",
            run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
            config = [[require('config.treesitter')]]
    }

    use {'akinsho/bufferline.nvim', event = "VimEnter",
            tag = "v3.*", 
            cond = firenvim_not_active,
            requires = 'kyazdani42/nvim-web-devicons',
            config = [[require('config.bufferline')]] 
    }

    use {'nvim-tree/nvim-tree.lua',
            requires = {
                'nvim-tree/nvim-web-devicons', -- optional, for file icons
            },
            config = [[require('config.nvimtree')]] 
    }

    use {'liuchengxu/vista.vim'}
    use {'karb94/neoscroll.nvim',
            config = [[require('config.neoscroll')]] 
        }

    use { 'tpope/vim-fugitive', config = [[require('config.fugitive')]] }
    -- Better git log display
    use { 'rbong/vim-flog', requires = "tpope/vim-fugitive", cmd = { "Flog" } }

    use { 'christoomey/vim-conflicted', requires = "tpope/vim-fugitive", cmd = { "Conflicted" } }

    -- Show git change (change, delete, add) signs in vim sign column
    use { 'lewis6991/gitsigns.nvim', config = [[require('config.gitsigns')]] }

    -- Better git commit experience
    use { 'rhysd/committia.vim', opt = true, setup = [[vim.cmd('packadd committia.vim')]] }

    use { 'kevinhwang91/nvim-bqf', ft = "qf", config = [[require('config.bqf')]] }


    use { 'nvim-telescope/telescope.nvim', 
            tag = '0.1.0',
            requires = { { 'nvim-lua/plenary.nvim' } },
        }
    -- search emoji and other symbols
    use { 'nvim-telescope/telescope-symbols.nvim', after = "telescope.nvim" }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
