-- https://github.com/hrsh7th/nvim-cmp
packer.use {
    'hrsh7th/nvim-cmp',
    requires = {},
    	config = function() 
		local cmp = require('cmp')
		local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

		cmp.setup {
			sources = {
				{ name = "luasnip" }
			},

			mapping = {
				['<CR>'] = cmp.mapping.confirm(),
				['<Tab>'] = cmp.mapping(function(fallback)
          				if cmp.visible() then
            					-- cmp.select_next_item()
          					if luasnip.expand_or_jumpable() then
            						luasnip.expand_or_jump()
						end
          				elseif luasnip.expand_or_jumpable() then
            					luasnip.expand_or_jump()
          				elseif has_words_before() then
            					cmp.complete()
          				else
            					fallback()
          				end
        			end, { "i", "s" }),

        			['<S-Tab>'] = cmp.mapping(function(fallback)
          				if cmp.visible() then
            					-- cmp.select_prev_item()
          				elseif luasnip.jumpable(-1) then
            					luasnip.jump(-1)
          				else
            					fallback()
          				end
        			end, { "i", "s" }),
        		},
	
			snippet = {
        			expand = function(args)
            				local luasnip = prequire("luasnip")
            				if not luasnip then
                				return
            				end
            				luasnip.lsp_expand(args.body)
        			end,
    			},
		}
	end
}


