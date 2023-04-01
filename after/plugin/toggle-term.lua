require"toggleterm".setup {
  size = 15,
  open_mapping = [[<c-\>]],
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = '50',
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


