require"toggleterm".setup {
  size = 45,
  open_mapping = [[<c-'>]],
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = '20',
  start_in_insert = true,
  persist_size = true,
  direction = 'vertical',
  winbar = {
    enabled = false,
    name_formatter = function(term) --  term: Terminal
      return term.name
    end
  },
}


