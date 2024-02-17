require"toggleterm".setup {
  size = 10,
  open_mapping = [[<c-'>]],
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = '20',
  start_in_insert = true,
  persist_size = true,
  direction = 'horizontal',
  winbar = {
    enabled = false,
    name_formatter = function(term) --  term: Terminal
      return term.name
    end
  },
}


