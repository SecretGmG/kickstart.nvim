return {
  -- Project management
  {
    'ahmedkhalf/project.nvim',
    config = function()
      require('project_nvim').setup {
        detection_methods = { 'pattern', 'lsp' },
        patterns = { '.git', 'pyproject.toml', 'package.json', 'Cargo.toml' },
        silent_chdir = true, -- auto change working dir
      }

      -- Load Telescope extension
      require('telescope').load_extension 'projects'
    end,
  },

  -- Telescope keymap for projects
  {
    'nvim-telescope/telescope.nvim',
    keys = {
      { '<leader>sp', ':Telescope projects<CR>', desc = 'Search Projects' },
    },
  },
}
