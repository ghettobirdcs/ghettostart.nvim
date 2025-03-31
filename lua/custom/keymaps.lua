-- Exit input mode by pressing jk
vim.keymap.set('i', 'jk', '<Esc>')
-- Enter file tree within neovim
vim.keymap.set('n', '<leader>F', vim.cmd.Ex, { desc = 'Open file directory' })
-- Save file
vim.keymap.set('n', '<leader>e', vim.cmd.w, { desc = 'Write to file' })
