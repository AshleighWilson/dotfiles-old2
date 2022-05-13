-- https://github.com/kyazdani42/nvim-tree.lua
PACKER.use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require('nvim-tree').setup {
    	actions = {
			open_file = { quit_on_open = true }
		},
		renderer = {
			indent_markers = { enable = true }
		}
    } end
}

-- Add trailing slash on folders
vim.g.nvim_tree_add_trailing = 1
