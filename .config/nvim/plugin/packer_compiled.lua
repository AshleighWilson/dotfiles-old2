-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/ashleigh/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/ashleigh/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/ashleigh/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/ashleigh/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ashleigh/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\nb\0\0\3\0\4\0\n6\0\0\0'\2\1\0B\0\2\0027\0\1\0006\0\0\0'\2\2\0B\0\2\0029\0\3\0B\0\1\1K\0\1\0\tload\"luasnip.loaders.from_snipmate\fluasnip\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n¤\2\0\0\6\0\f\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0)\1\1\0=\1\n\0006\0\b\0009\0\t\0)\1\1\0=\1\v\0K\0\1\0\27nvim_tree_add_trailing\29nvim_tree_indent_markers\6g\bvim\foptions\1\0\0\foffsets\1\0\4\15text_align\tleft\rfiletype\rNvimTree\14highlight\14Directory\ttext\18File Explorer\1\0\1\27always_show_bufferline\1\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["doom-one.nvim"] = {
    config = { "\27LJ\2\nª\3\0\0\4\0\t\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\b\0B\0\1\1K\0\1\0\21load_colorscheme\25plugins_integrations\1\0\14\rwhichkey\2\flspsaga\1\19vim_illuminate\2\21indent_blankline\2\14telescope\1\rstartify\2\14dashboard\2\14nvim_tree\2\vneogit\2\rgitsigns\2\14gitgutter\1\15bufferline\1\vbarbar\2\nneorg\2\rpumblend\1\0\2\venable\2\24transparency_amount\3\20\1\0\5\27transparent_background\1\22enable_treesitter\2\20italic_comments\1\20terminal_colors\1\20cursor_coloring\1\nsetup\rdoom-one\frequire\0" },
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/doom-one.nvim",
    url = "https://github.com/NTBBloodbath/doom-one.nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30galaxyline.themes.eviline\frequire\0" },
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/galaxyline.nvim",
    url = "https://github.com/NTBBloodbath/galaxyline.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nž\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\21filetype_exclude\1\2\0\0\14dashboard\1\0\2\25show_current_context\2\31show_current_context_start\1\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["nvim-cmp"] = {
    after = { "LuaSnip" },
    loaded = true,
    only_config = true
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nt\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\factions\1\0\0\14open_file\1\0\0\1\0\1\17quit_on_open\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nì\1\0\0\6\0\17\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\a\3=\3\t\0025\3\r\0005\4\v\0005\5\n\0=\5\f\4=\4\14\3=\3\15\0024\3\0\0=\3\16\2B\0\2\1K\0\1\0\15extensions\fpickers\15find_files\1\0\0\17find_command\1\0\0\1\4\0\0\arg\r--hidden\f--files\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\1\0\1\n<C-h>\14which_key\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nŸ\4\0\0\4\0\24\0\"6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0027\0\3\0006\0\3\0009\0\4\0005\2\6\0005\3\5\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0024\3\0\0B\0\3\1K\0\1\0\14<leader>p\1\0\1\tname\n+code\16<leader>nps\1\3\0\0\24<cmd>PackerSync<cr>\16Packer Sync\15<leader>np\1\0\1\tname\f+packer\14<leader>n\1\0\1\tname\f+neovim\15<leader>ft\1\3\0\0\27<cmd>NvimTreeFocus<cr>\25View Filesystem Tree\15<leader>fn\1\3\0\0\18<cmd>enew<cr>\rNew File\15<leader>fr\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\15<leader>ff\1\3\0\0\"<cmd>Telescope find_files<cr>\14Find File\14<leader>f\1\0\0\1\0\1\tname\n+file\rregister\awk\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30galaxyline.themes.eviline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n¤\2\0\0\6\0\f\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0)\1\1\0=\1\n\0006\0\b\0009\0\t\0)\1\1\0=\1\v\0K\0\1\0\27nvim_tree_add_trailing\29nvim_tree_indent_markers\6g\bvim\foptions\1\0\0\foffsets\1\0\4\15text_align\tleft\rfiletype\rNvimTree\14highlight\14Directory\ttext\18File Explorer\1\0\1\27always_show_bufferline\1\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nŸ\4\0\0\4\0\24\0\"6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0027\0\3\0006\0\3\0009\0\4\0005\2\6\0005\3\5\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0024\3\0\0B\0\3\1K\0\1\0\14<leader>p\1\0\1\tname\n+code\16<leader>nps\1\3\0\0\24<cmd>PackerSync<cr>\16Packer Sync\15<leader>np\1\0\1\tname\f+packer\14<leader>n\1\0\1\tname\f+neovim\15<leader>ft\1\3\0\0\27<cmd>NvimTreeFocus<cr>\25View Filesystem Tree\15<leader>fn\1\3\0\0\18<cmd>enew<cr>\rNew File\15<leader>fr\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\15<leader>ff\1\3\0\0\"<cmd>Telescope find_files<cr>\14Find File\14<leader>f\1\0\0\1\0\1\tname\n+file\rregister\awk\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nž\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\21filetype_exclude\1\2\0\0\14dashboard\1\0\2\25show_current_context\2\31show_current_context_start\1\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nt\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\factions\1\0\0\14open_file\1\0\0\1\0\1\17quit_on_open\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nÐ\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20€6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2€+\2\1\0X\3\1€+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2Î\1\0\1\3\2\5\0\"-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\t€6\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\23€6\1\1\0009\1\3\1B\1\1\1X\1\19€6\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4€6\1\1\0009\1\3\1B\1\1\1X\1\n€-\1\1\0B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\4\1B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\1À\rcomplete\19expand_or_jump\23expand_or_jumpable\fluasnip\fvisiblew\0\1\4\1\4\0\20-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\1€X\1\r€6\1\1\0009\1\2\1)\3ÿÿB\1\2\2\15\0\1\0X\2\5€6\1\1\0009\1\3\1)\3ÿÿB\1\2\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\tjump\rjumpable\fluasnip\fvisibleP\0\1\5\0\4\0\n6\1\0\0'\3\1\0B\1\2\2\14\0\1\0X\2\1€K\0\1\0009\2\2\0019\4\3\0B\2\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\rprequire„\2\1\0\n\0\21\0!6\0\0\0'\2\1\0B\0\2\0023\1\2\0009\2\3\0005\4\5\0004\5\3\0005\6\4\0>\6\1\5=\5\6\0045\5\t\0009\6\a\0009\6\b\6B\6\1\2=\6\n\0059\6\a\0003\b\v\0005\t\f\0B\6\3\2=\6\r\0059\6\a\0003\b\14\0005\t\15\0B\6\3\2=\6\16\5=\5\a\0045\5\18\0003\6\17\0=\6\19\5=\5\20\4B\2\2\0012\0\0€K\0\1\0\fsnippet\vexpand\1\0\0\0\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\0\fconfirm\fmapping\fsources\1\0\0\1\0\1\tname\fluasnip\nsetup\0\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nì\1\0\0\6\0\17\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\a\3=\3\t\0025\3\r\0005\4\v\0005\5\n\0=\5\f\4=\4\14\3=\3\15\0024\3\0\0=\3\16\2B\0\2\1K\0\1\0\15extensions\fpickers\15find_files\1\0\0\17find_command\1\0\0\1\4\0\0\arg\r--hidden\f--files\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\1\0\1\n<C-h>\14which_key\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: doom-one.nvim
time([[Config for doom-one.nvim]], true)
try_loadstring("\27LJ\2\nª\3\0\0\4\0\t\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\b\0B\0\1\1K\0\1\0\21load_colorscheme\25plugins_integrations\1\0\14\rwhichkey\2\flspsaga\1\19vim_illuminate\2\21indent_blankline\2\14telescope\1\rstartify\2\14dashboard\2\14nvim_tree\2\vneogit\2\rgitsigns\2\14gitgutter\1\15bufferline\1\vbarbar\2\nneorg\2\rpumblend\1\0\2\venable\2\24transparency_amount\3\20\1\0\5\27transparent_background\1\22enable_treesitter\2\20italic_comments\1\20terminal_colors\1\20cursor_coloring\1\nsetup\rdoom-one\frequire\0", "config", "doom-one.nvim")
time([[Config for doom-one.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd LuaSnip ]]

-- Config for: LuaSnip
try_loadstring("\27LJ\2\nb\0\0\3\0\4\0\n6\0\0\0'\2\1\0B\0\2\0027\0\1\0006\0\0\0'\2\2\0B\0\2\0029\0\3\0B\0\1\1K\0\1\0\tload\"luasnip.loaders.from_snipmate\fluasnip\frequire\0", "config", "LuaSnip")

time([[Sequenced loading]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
