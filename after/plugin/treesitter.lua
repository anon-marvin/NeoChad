require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript","html","css","typescript","python"},
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
