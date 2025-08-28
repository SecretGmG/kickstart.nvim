return {
  'akinsho/toggleterm.nvim',
  version = '*', -- use latest release
  config = function()
    require('toggleterm').setup {
      size = 35, -- approximate height of the terminal
      dir = 'git_dir',
      open_mapping = [[<c-t>]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      auto_scroll = true,
      insert_mappings = true,
      persist_size = true,
      direction = 'horizontal',
    }
  end,
}
