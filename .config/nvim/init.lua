
-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
-- https://github.com/nanotee/nvim-lua-guide

-- Plugins
require('plugins') -- TODO: Configuration
require('plugins.dashboard') -- TODO: Configuration
require('plugins.comment') -- TODO: Configuration
require('plugins.which-key') -- TODO: Configuration
require('plugins.doom-one') -- TODO: Configuration
require('plugins.treesitter') -- TODO: Configuration
require('plugins.telescope') -- TODO: fzf-native, ripgrep, fd, lsp, devicons & configuration
require('plugins.todo-comments') -- TODO: Configuration
require('plugins.galaxyline') -- TODO: Configuration
require('plugins.bufferline') -- TODO: Configuration
require('plugins.nvim-tree') -- TODO: Configuration
require('plugins.nvim-cmp') -- TODO: Configuration
require('plugins.cmp-luasnip') -- TODO: Configuration
require('plugins.luasnip') -- TODO: Configuration
require('plugins.indent-blankline') -- TODO: Configuration
require('plugins.lspconfig') -- TODO: Configuration

-- Automatically install required plugins after fresh install.
if packer.packer_bootstrap then
	require('packer').sync()
end


--Remap space as leader key
-- vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set key press timeout (i.e. for which-key)
vim.opt.timeoutlen=500

vim.wo.colorcolumn = "80"

vim.opt.mouse = "a"
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true -- enable colorscheme support

-- Reload neovim and plugins when configs are updated
vim.cmd([[
  augroup reload_config
    autocmd!
    autocmd BufWritePost init.lua luafile <afile>
    autocmd BufWritePost ~/.config/nvim/lua/plugins/*.lua lua require('plenary.reload').reload_module('plugins', true)
    autocmd BufWritePost ~/.config/nvim/lua/plugins/*.lua luafile ~/.config/nvim/init.lua
    autocmd BufWritePost ~/.config/nvim/lua/plugins/*.lua PackerCompile
  augroup end
]])
