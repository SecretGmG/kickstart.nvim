return {
  'akinsho/toggleterm.nvim',
  version = '*', -- use latest release
  config = function()
    require('toggleterm').setup {
      -- config options (tweak as you like)
      size = 15,
      open_mapping = [[<C-t>]],
      shade_terminals = true,
      direction = 'horizontal', -- "vertical" | "tab" | "float"
    }

    -- Example keymap: toggle floating terminal with <leader>tt
    vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm direction=float<CR>', { desc = 'Toggle floating terminal' })
  end,
}
