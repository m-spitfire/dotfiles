-- install packer.nvim
if require('first_setup')() then
  return
end

-- leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- packer.nvim file
require('plugins')
-- autocommands
require('aucmds')
