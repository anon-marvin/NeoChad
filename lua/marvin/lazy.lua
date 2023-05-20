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
    'nvim-lualine/lualine.nvim',
    'CRAG666/code_runner.nvim',
    'folke/which-key.nvim',
    'folke/tokyonight.nvim',
    "windwp/nvim-autopairs",
    'olimorris/onedarkpro.nvim',
    'nvim-tree/nvim-web-devicons',
    "lukas-reineke/indent-blankline.nvim",
    'nvim-treesitter/nvim-treesitter',
    'norcalli/nvim-colorizer.lua',
    'nvim-treesitter/playground',
    'akinsho/toggleterm.nvim',
    'nvim-tree/nvim-tree.lua',
    'rcarriga/nvim-notify',
    'numToStr/Comment.nvim',
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { 'neovim/nvim-lspconfig' },           -- Required
    'williamboman/mason.nvim',
    { 'williamboman/mason-lspconfig.nvim' }, -- Optional

    { 'hrsh7th/nvim-cmp' },                -- Required
    { 'hrsh7th/cmp-nvim-lsp' },            -- Required

}
local opts = {}
require('lazy').setup(plugins, opts)
