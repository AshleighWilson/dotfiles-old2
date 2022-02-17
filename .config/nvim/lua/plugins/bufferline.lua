-- https://github.com/akinsho/bufferline.nvim
packer.use {
	'akinsho/bufferline.nvim',
	requires = {'kyazdani42/nvim-web-devicons'},
	config = function()
		require('bufferline').setup {
			options = {
				always_show_bufferline = false,
				offsets = {
					{
    						filetype = "NvimTree",
    						text = "File Explorer",
    						highlight = "Directory",
    						text_align = "left"
  					}
				}
			},
		}
		vim.g.nvim_tree_indent_markers = 1
		vim.g.nvim_tree_add_trailing = 1
  	end
}
