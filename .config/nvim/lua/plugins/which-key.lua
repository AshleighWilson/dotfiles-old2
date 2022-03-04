-- https://github.com/folke/which-key.nvim
PACKER.use {
	"folke/which-key.nvim",
	config = function()
		require("which-key").setup {
		}
		
		wk = require("which-key")
		wk.register({  
  			["<leader>f"] = { name = "+file" },
  			["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find File" },         
  			["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
  			["<leader>fn"] = { "<cmd>enew<cr>", "New File" },
  			["<leader>ft"] = { "<cmd>NvimTreeFocus<cr>", "View Filesystem Tree" },
			["<leader>n"] = { name = "+neovim" },
			["<leader>np"] = { name = "+packer" },
			["<leader>nps"] = { "<cmd>PackerSync<cr>", "Packer Sync" },

			["<leader>p"] = { name = "+code" },
		},
		{
		})
	end
}

