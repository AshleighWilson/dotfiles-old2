-- Documentation: https://github.com/neovim/nvim-lspconfig
packer.use {
	'neovim/nvim-lspconfig',
	requires = {},
	-- config = function()
	-- 	require('neovim/nvim-lspconfig').setup {
	-- 	}
	-- end
}

-- C/C++
-- Install ccls via OS package manager
local lspconfig = require('lspconfig')
lspconfig.ccls.setup {
	init_options = {
		compilationDatabaseDirectory = "build";
		index = {
			threads = 0;
		};
		clang = {
			excludeArgs = { "-frounding-math" };
		};
	}
}

-- require("lspconfig").ccls.setup()

-- lua
-- Install lua-language-server from OS package manager
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

-- require'lspconfig'.sumneko_lua.setup{}

-- bash
require("lspconfig").bashls.setup {}
