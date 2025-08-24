return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').load_extension 'file_browser'

    -- Map: open file browser in current working dir
    vim.keymap.set('n', '<leader>b', function()
      require('telescope').extensions.file_browser.file_browser()
    end, { desc = 'File Browser' })
  end,
}
