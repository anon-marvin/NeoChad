require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "rust" ,"cpp","javascript","html","css","typescript","python"},
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
