-- https://github.com/kyazdani42/nvim-tree.lua
packer.use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require('nvim-tree').setup {
    	actions = {
		open_file = { quit_on_open = true }
	}
    } end
}
