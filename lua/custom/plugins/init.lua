return {
  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle undotree' })
    end,
  },

  {
    'ThePrimeagen/harpoon',
    config = function()
      local mark = require 'harpoon.mark'
      local ui = require 'harpoon.ui'
      vim.keymap.set('n', '<leader>a', mark.add_file, { desc = 'Add file to harpoon' })
      vim.keymap.set('n', '<C-0>', ui.toggle_quick_menu)
      vim.keymap.set('n', '<C-1>', function()
        ui.nav_file(1)
      end)
      vim.keymap.set('n', '<C-2>', function()
        ui.nav_file(2)
      end)
      vim.keymap.set('n', '<C-3>', function()
        ui.nav_file(3)
      end)
      vim.keymap.set('n', '<C-4>', function()
        ui.nav_file(4)
      end)
    end,
  },

  {
    'mfussenegger/nvim-dap-python',
    dependencies = { 'mfussenegger/nvim-dap', 'microsoft/debugpy' },
    config = function() end,
  },

  { 'astrand/xclip', config = function() end },

  {
    'startup-nvim/startup.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-file-browser.nvim' },
    config = function()
      require('startup').setup { theme = 'dashboard' }
    end,
  },

  { 'tpope/vim-fugitive', config = function() end },
}
