return {
  'akinsho/toggleterm.nvim',
  version = '*', -- use latest release
  config = function()
    require('toggleterm').setup {
      size = 15, -- approximate height of the terminal
      open_mapping = [[<c-t>]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = 'float', -- still "float"
      float_opts = {
        border = 'double', -- your preferred border style
        width = vim.o.columns, -- full width of the window
        height = 15, -- control the height
        winblend = 0, -- transparency
        highlights = { border = 'Normal', background = 'Normal' },
      },
    }
  end,
}
