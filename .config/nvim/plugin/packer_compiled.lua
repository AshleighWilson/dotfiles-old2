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
    config = { "\27LJ\2\n§\2\0\0\6\0\f\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0)\1\1\0=\1\n\0006\0\b\0009\0\t\0)\1\1\0=\1\v\0K\0\1\0\27nvim_tree_add_trailing\29nvim_tree_indent_markers\6g\bvim\foptions\1\0\0\foffsets\1\0\4\14highlight\14Directory\ttext\18File Explorer\15text_align\tleft\rfiletype\rNvimTree\1\0\1\27always_show_bufferline\1\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\nG\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\14telescope dashboard_default_executive\6g\bvim\0" },
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["doom-one.nvim"] = {
    config = { "\27LJ\2\n™\3\0\0\4\0\t\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\b\0B\0\1\1K\0\1\0\21load_colorscheme\25plugins_integrations\1\0\14\14nvim_tree\2\vneogit\2\rgitsigns\2\14gitgutter\1\15bufferline\1\vbarbar\2\nneorg\2\14telescope\1\flspsaga\1\19vim_illuminate\2\21indent_blankline\2\rwhichkey\2\rstartify\2\14dashboard\2\rpumblend\1\0\2\24transparency_amount\3\20\venable\2\1\0\5\27transparent_background\1\22enable_treesitter\2\20italic_comments\1\20terminal_colors\1\20cursor_coloring\1\nsetup\rdoom-one\frequire\0" },
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
    config = { "\27LJ\2\nû\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\21filetype_exclude\1\2\0\0\14dashboard\1\0\2\31show_current_context_start\1\25show_current_context\2\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  neorg = {
    config = { "\27LJ\2\n–\4\0\0\t\0\"\00046\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2 \0005\3\3\0004\4\0\0=\4\4\0035\4\5\0004\5\0\0=\5\6\4=\4\a\0035\4\b\0004\5\0\0=\5\6\4=\4\t\0035\4\v\0005\5\n\0=\5\6\4=\4\f\0035\4\24\0005\5\18\0005\6\16\0006\a\r\0009\a\14\a9\a\15\aB\a\1\2=\a\17\6=\6\19\0056\6\r\0009\6\14\0069\6\20\6'\b\21\0B\6\2\2'\a\22\0&\6\a\6=\6\23\5=\5\6\4=\4\25\0035\4\27\0005\5\26\0=\5\6\4=\4\28\0035\4\29\0004\5\0\0=\5\6\4=\4\30\0034\4\0\0=\4\31\3=\3!\2B\0\2\1K\0\1\0\tload\1\0\0 core.integrations.telescope\31core.integrations.nvim-cmp\1\0\0\25core.norg.completion\1\0\0\1\0\1\vengine\rnvim-cmp\21core.norg.dirman\1\0\0\19last_workspace\30/neorg_last_workspace.txt\ncache\fstdpath\15workspaces\1\0\2\nindex\15index.norg\14autochdir\2\fdefault\1\0\0\vgetcwd\afn\bvim\18core.gtd.base\1\0\0\1\0\1\14workspace\fdefault\24core.norg.concealer\1\0\0\22core.norg.qol.toc\vconfig\1\0\0\18core.defaults\1\0\0\nsetup\nneorg\frequire\0" },
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["neorg-telescope"] = {
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/neorg-telescope",
    url = "https://github.com/nvim-neorg/neorg-telescope"
  },
  ["nvim-cmp"] = {
    after = { "LuaSnip" },
    loaded = true,
    only_config = true
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nê\5\0\0\f\0*\0K6\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0026\1\4\0'\3\5\0B\1\2\0029\1\6\1\18\3\0\0B\1\2\2\18\0\1\0006\1\4\0'\3\a\0B\1\2\0029\1\b\0019\1\t\0015\3\n\0=\0\v\3B\1\2\0016\1\0\0009\1\f\0016\3\r\0009\3\14\3'\4\15\0B\1\3\0026\2\16\0009\2\17\2\18\4\1\0'\5\18\0B\2\3\0016\2\16\0009\2\17\2\18\4\1\0'\5\19\0B\2\3\0016\2\4\0'\4\a\0B\2\2\0029\2\20\0029\2\t\0025\4\21\0=\0\v\0045\5%\0005\6\23\0005\a\22\0=\1\14\a=\a\24\0065\a\26\0005\b\25\0=\b\27\a=\a\28\0065\a \0006\b\0\0009\b\29\b9\b\30\b'\n\31\0+\v\2\0B\b\3\2=\b!\a=\a\"\0065\a#\0=\a$\6=\6&\5=\5'\4B\2\2\0016\2\4\0'\4\a\0B\2\2\0029\2(\0029\2\t\0025\4)\0=\0\v\4B\2\2\1K\0\1\0\1\0\0\vbashls\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\1\0\0\16sumneko_lua\19lua/?/init.lua\14lua/?.lua\vinsert\ntable\6;\tpath\fpackage\nsplit\17capabilities\1\0\0\nsetup\tccls\14lspconfig\24update_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp\bvim\0" },
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
    config = { "\27LJ\2\n¯\3\0\0\5\0\20\0\0286\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0005\1\f\0005\2\n\0005\3\v\0=\3\6\2=\2\b\1=\1\t\0006\1\0\0'\3\r\0B\1\2\0029\1\14\0015\3\16\0005\4\15\0=\4\17\0035\4\18\0=\4\19\3B\1\2\1K\0\1\0\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\a\0\0\6c\bcpp\blua\tnorg\14norg_meta\15norg_table\nsetup\28nvim-treesitter.configs\1\0\0\1\2\0\0\17src/parser.c\1\0\2\burl9https://github.com/nvim-neorg/tree-sitter-norg-table\vbranch\tmain\15norg_table\17install_info\1\0\0\nfiles\1\2\0\0\17src/parser.c\1\0\2\burl8https://github.com/nvim-neorg/tree-sitter-norg-meta\vbranch\tmain\14norg_meta\23get_parser_configs\28nvim-treesitter.parsers\frequire\0" },
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
  ["suda.vim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/suda.vim",
    url = "https://github.com/lambdalisue/suda.vim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nı\1\0\0\6\0\17\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\a\3=\3\t\0025\3\r\0005\4\v\0005\5\n\0=\5\f\4=\4\14\3=\3\15\0024\3\0\0=\3\16\2B\0\2\1K\0\1\0\15extensions\fpickers\15find_files\1\0\0\17find_command\1\0\0\1\5\0\0\arg\r--hidden\r--ignore\f--files\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\1\0\1\n<C-h>\14which_key\nsetup\14telescope\frequire\0" },
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
    config = { "\27LJ\2\nü\4\0\0\4\0\24\0\"6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0027\0\3\0006\0\3\0009\0\4\0005\2\6\0005\3\5\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0024\3\0\0B\0\3\1K\0\1\0\14<leader>p\1\0\1\tname\n+code\16<leader>nps\1\3\0\0\24<cmd>PackerSync<cr>\16Packer Sync\15<leader>np\1\0\1\tname\f+packer\14<leader>n\1\0\1\tname\f+neovim\15<leader>ft\1\3\0\0\27<cmd>NvimTreeFocus<cr>\25View Filesystem Tree\15<leader>fn\1\3\0\0\18<cmd>enew<cr>\rNew File\15<leader>fr\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\15<leader>ff\1\3\0\0\"<cmd>Telescope find_files<cr>\14Find File\14<leader>f\1\0\0\1\0\1\tname\n+file\rregister\awk\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/ashleigh/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nü\4\0\0\4\0\24\0\"6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0027\0\3\0006\0\3\0009\0\4\0005\2\6\0005\3\5\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0024\3\0\0B\0\3\1K\0\1\0\14<leader>p\1\0\1\tname\n+code\16<leader>nps\1\3\0\0\24<cmd>PackerSync<cr>\16Packer Sync\15<leader>np\1\0\1\tname\f+packer\14<leader>n\1\0\1\tname\f+neovim\15<leader>ft\1\3\0\0\27<cmd>NvimTreeFocus<cr>\25View Filesystem Tree\15<leader>fn\1\3\0\0\18<cmd>enew<cr>\rNew File\15<leader>fr\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\15<leader>ff\1\3\0\0\"<cmd>Telescope find_files<cr>\14Find File\14<leader>f\1\0\0\1\0\1\tname\n+file\rregister\awk\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nê\5\0\0\f\0*\0K6\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0026\1\4\0'\3\5\0B\1\2\0029\1\6\1\18\3\0\0B\1\2\2\18\0\1\0006\1\4\0'\3\a\0B\1\2\0029\1\b\0019\1\t\0015\3\n\0=\0\v\3B\1\2\0016\1\0\0009\1\f\0016\3\r\0009\3\14\3'\4\15\0B\1\3\0026\2\16\0009\2\17\2\18\4\1\0'\5\18\0B\2\3\0016\2\16\0009\2\17\2\18\4\1\0'\5\19\0B\2\3\0016\2\4\0'\4\a\0B\2\2\0029\2\20\0029\2\t\0025\4\21\0=\0\v\0045\5%\0005\6\23\0005\a\22\0=\1\14\a=\a\24\0065\a\26\0005\b\25\0=\b\27\a=\a\28\0065\a \0006\b\0\0009\b\29\b9\b\30\b'\n\31\0+\v\2\0B\b\3\2=\b!\a=\a\"\0065\a#\0=\a$\6=\6&\5=\5'\4B\2\2\0016\2\4\0'\4\a\0B\2\2\0029\2(\0029\2\t\0025\4)\0=\0\v\4B\2\2\1K\0\1\0\1\0\0\vbashls\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\1\0\0\16sumneko_lua\19lua/?/init.lua\14lua/?.lua\vinsert\ntable\6;\tpath\fpackage\nsplit\17capabilities\1\0\0\nsetup\tccls\14lspconfig\24update_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\nG\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\14telescope dashboard_default_executive\6g\bvim\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nı\1\0\0\6\0\17\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\a\3=\3\t\0025\3\r\0005\4\v\0005\5\n\0=\5\f\4=\4\14\3=\3\15\0024\3\0\0=\3\16\2B\0\2\1K\0\1\0\15extensions\fpickers\15find_files\1\0\0\17find_command\1\0\0\1\5\0\0\arg\r--hidden\r--ignore\f--files\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\1\0\1\n<C-h>\14which_key\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: suda.vim
time([[Config for suda.vim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "suda.vim")
time([[Config for suda.vim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nt\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\factions\1\0\0\14open_file\1\0\0\1\0\1\17quit_on_open\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: doom-one.nvim
time([[Config for doom-one.nvim]], true)
try_loadstring("\27LJ\2\n™\3\0\0\4\0\t\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\b\0B\0\1\1K\0\1\0\21load_colorscheme\25plugins_integrations\1\0\14\14nvim_tree\2\vneogit\2\rgitsigns\2\14gitgutter\1\15bufferline\1\vbarbar\2\nneorg\2\14telescope\1\flspsaga\1\19vim_illuminate\2\21indent_blankline\2\rwhichkey\2\rstartify\2\14dashboard\2\rpumblend\1\0\2\24transparency_amount\3\20\venable\2\1\0\5\27transparent_background\1\22enable_treesitter\2\20italic_comments\1\20terminal_colors\1\20cursor_coloring\1\nsetup\rdoom-one\frequire\0", "config", "doom-one.nvim")
time([[Config for doom-one.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n§\2\0\0\6\0\f\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0)\1\1\0=\1\n\0006\0\b\0009\0\t\0)\1\1\0=\1\v\0K\0\1\0\27nvim_tree_add_trailing\29nvim_tree_indent_markers\6g\bvim\foptions\1\0\0\foffsets\1\0\4\14highlight\14Directory\ttext\18File Explorer\15text_align\tleft\rfiletype\rNvimTree\1\0\1\27always_show_bufferline\1\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: neorg
time([[Config for neorg]], true)
try_loadstring("\27LJ\2\n–\4\0\0\t\0\"\00046\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2 \0005\3\3\0004\4\0\0=\4\4\0035\4\5\0004\5\0\0=\5\6\4=\4\a\0035\4\b\0004\5\0\0=\5\6\4=\4\t\0035\4\v\0005\5\n\0=\5\6\4=\4\f\0035\4\24\0005\5\18\0005\6\16\0006\a\r\0009\a\14\a9\a\15\aB\a\1\2=\a\17\6=\6\19\0056\6\r\0009\6\14\0069\6\20\6'\b\21\0B\6\2\2'\a\22\0&\6\a\6=\6\23\5=\5\6\4=\4\25\0035\4\27\0005\5\26\0=\5\6\4=\4\28\0035\4\29\0004\5\0\0=\5\6\4=\4\30\0034\4\0\0=\4\31\3=\3!\2B\0\2\1K\0\1\0\tload\1\0\0 core.integrations.telescope\31core.integrations.nvim-cmp\1\0\0\25core.norg.completion\1\0\0\1\0\1\vengine\rnvim-cmp\21core.norg.dirman\1\0\0\19last_workspace\30/neorg_last_workspace.txt\ncache\fstdpath\15workspaces\1\0\2\nindex\15index.norg\14autochdir\2\fdefault\1\0\0\vgetcwd\afn\bvim\18core.gtd.base\1\0\0\1\0\1\14workspace\fdefault\24core.norg.concealer\1\0\0\22core.norg.qol.toc\vconfig\1\0\0\18core.defaults\1\0\0\nsetup\nneorg\frequire\0", "config", "neorg")
time([[Config for neorg]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n¯\3\0\0\5\0\20\0\0286\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0005\1\f\0005\2\n\0005\3\v\0=\3\6\2=\2\b\1=\1\t\0006\1\0\0'\3\r\0B\1\2\0029\1\14\0015\3\16\0005\4\15\0=\4\17\0035\4\18\0=\4\19\3B\1\2\1K\0\1\0\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\a\0\0\6c\bcpp\blua\tnorg\14norg_meta\15norg_table\nsetup\28nvim-treesitter.configs\1\0\0\1\2\0\0\17src/parser.c\1\0\2\burl9https://github.com/nvim-neorg/tree-sitter-norg-table\vbranch\tmain\15norg_table\17install_info\1\0\0\nfiles\1\2\0\0\17src/parser.c\1\0\2\burl8https://github.com/nvim-neorg/tree-sitter-norg-meta\vbranch\tmain\14norg_meta\23get_parser_configs\28nvim-treesitter.parsers\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30galaxyline.themes.eviline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nû\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\21filetype_exclude\1\2\0\0\14dashboard\1\0\2\31show_current_context_start\1\25show_current_context\2\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2Œ\1\0\1\3\2\5\0\"-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\tÄ6\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\23Ä6\1\1\0009\1\3\1B\1\1\1X\1\19Ä6\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä6\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\1\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\rcomplete\19expand_or_jump\23expand_or_jumpable\fluasnip\fvisiblew\0\1\4\1\4\0\20-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\1ÄX\1\rÄ6\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä6\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\tjump\rjumpable\fluasnip\fvisible3\0\1\4\0\3\0\0056\1\0\0009\1\1\0019\3\2\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip¿\2\1\0\n\0\24\0'6\0\0\0'\2\1\0B\0\2\0023\1\2\0009\2\3\0005\4\6\0004\5\3\0005\6\4\0>\6\1\0055\6\5\0>\6\2\5=\5\a\0045\5\n\0009\6\b\0009\6\t\6B\6\1\2=\6\v\0059\6\b\0009\6\f\6B\6\1\2=\6\r\0059\6\b\0003\b\14\0005\t\15\0B\6\3\2=\6\16\0059\6\b\0003\b\17\0005\t\18\0B\6\3\2=\6\19\5=\5\b\0045\5\21\0003\6\20\0=\6\22\5=\5\23\4B\2\2\0012\0\0ÄK\0\1\0\fsnippet\vexpand\1\0\0\0\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\fconfirm\14<C-Space>\1\0\0\rcomplete\fmapping\fsources\1\0\0\1\0\1\tname\rnvim_lsp\1\0\1\tname\fluasnip\nsetup\0\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
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
