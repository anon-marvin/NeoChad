local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "

local plugins = {
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
    },
    'akinsho/bufferline.nvim',
    "nvim-tree/nvim-tree.lua",
    'nvim-lualine/lualine.nvim',
    'lewis6991/gitsigns.nvim',
    'CRAG666/code_runner.nvim',
    'folke/which-key.nvim',
    "Pocco81/auto-save.nvim",
    'folke/tokyonight.nvim',
    "windwp/nvim-autopairs",
    'olimorris/onedarkpro.nvim',
    'nvim-tree/nvim-web-devicons',
    "lukas-reineke/indent-blankline.nvim",
    'nvim-treesitter/nvim-treesitter',
    'norcalli/nvim-colorizer.lua',
    'nvim-treesitter/playground',
    'akinsho/toggleterm.nvim',
    'rcarriga/nvim-notify',
    'numToStr/Comment.nvim',
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { 'neovim/nvim-lspconfig' },             -- Required
    'williamboman/mason.nvim',
    { 'williamboman/mason-lspconfig.nvim' }, -- Optional

    { 'hrsh7th/nvim-cmp' },                  -- Required
    { 'hrsh7th/cmp-nvim-lsp' },              -- Required
    {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                -- config
            }
        end,
        dependencies = { { 'nvim-tree/nvim-web-devicons' } }
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
        },
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        }
    },
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }
}
local opts = {}
require('lazy').setup(plugins, opts)
