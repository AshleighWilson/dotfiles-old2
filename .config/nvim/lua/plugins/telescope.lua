-- https://github.com/nvim-telescope/telescope.nvim 
packer.use {
  'nvim-telescope/telescope.nvim',
  requires = 'nvim-lua/plenary.nvim',
  config = function()
	  require('telescope').setup {
	  defaults = {
		  mappings = {
			  i = {
				  ["<C-h>"] = "which_key"
			  }
		  }
	  },
	  
	  pickers = {
		  find_files = {
			  find_command = { "rg", "--hidden", "--files" }
		  }
	  },

	  extensions = {
	  }
	}
  end
}
