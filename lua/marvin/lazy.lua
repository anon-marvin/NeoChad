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
  'akinsho/bufferline.nvim',
  'nvim-lualine/lualine.nvim',
  'CRAG666/code_runner.nvim',
  'folke/which-key.nvim',
  'folke/tokyonight.nvim',
  'olimorris/onedarkpro.nvim',
  'nvim-tree/nvim-web-devicons',
  "lukas-reineke/indent-blankline.nvim",
  'nvim-treesitter/nvim-treesitter',
  'norcalli/nvim-colorizer.lua',
  'nvim-treesitter/playground',
  'akinsho/toggleterm.nvim',
  'nvim-tree/nvim-tree.lua',
  'windwp/nvim-autopairs',
  'rcarriga/nvim-notify',
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  dependencies = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      build = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}

}
  local opts = {}
  require('lazy').setup(plugins,opts)
