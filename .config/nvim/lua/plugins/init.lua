-- Install packer
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local packer_bootstrap = nil

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	packer_bootstrap = vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.cmd [[packadd packer.nvim]]
PACKER = require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
end)

-- Load plugins
require('plugins.lspconfig')
require('plugins.nvim-cmp') -- TODO: Configuration
require('plugins.luasnip')
require('plugins.dashboard')
require('plugins.comment') -- TODO: Configuration
require('plugins.which-key') -- TODO: Configuration
require('plugins.doom-one') -- TODO: Configuration
require('plugins.treesitter') -- TODO: Configuration
require('plugins.telescope') -- TODO: fzf-native, ripgrep, fd, lsp, devicons & configuration
require('plugins.todo-comments') -- TODO: Configuration
require('plugins.galaxyline') -- TODO: Configuration
require('plugins.bufferline') -- TODO: Configuration
require('plugins.nvim-tree') -- TODO: Configuration
require('plugins.indent-blankline') -- TODO: Configuration
require('plugins.suda') -- TODO: Configuration
require('plugins.neorg') -- TODO: Configuration
require('plugins.orgmode') -- TODO: Configuration
require('plugins.colorizer') -- TODO:
require('plugins.lastplace') -- TODO:

-- Automatically install required plugins after fresh install.
if packer_bootstrap then
	require('packer').sync()
end
