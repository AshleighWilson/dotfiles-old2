-- doom_userplugins - Doom nvim custom plugins
--
-- This file contains all the custom plugins that are not in Doom nvim but that
-- the user requires. All the available fields can be found here
-- https://github.com/wbthomason/packer.nvim#specifying-plugins
--
-- By example, for including a plugin with a dependency on telescope:
-- M.plugins {
--   {
--     'user/repository',
--     requires = { 'nvim-lua/telescope.nvim' },
--   },
-- }

local M = {}

M.source = debug.getinfo(1, "S").source:sub(2)

M.plugins = {
    --[[ {
        -- Use arduino-cli to compile and upload programs.
        'stevearc/vim-arduino',
        config = function()
            -- Use slime for arduino commands.
            vim.g.arduino_use_slime = 1
        end,
    }, ]]
    {
        -- Allow arduino commands to be sent to another tmux pane.
        'jpalardy/vim-slime',
        config = function()
            -- Use tmux panes with slime.
            vim.g.slime_target = "tmux"
            
            -- Slime paste file
            vim.g.slime_paste_file = "$HOME/.config/slime/slime_paste"
            
            -- Set the default tmux pane.
            vim.g.slime_default_config = { socket_name = "default", target_pane = ":.1"}
            
            -- Bypass prompt slime config.
            vim.g.slime_dont_ask_default = 1
        end,
    },
    {
        'coddingtonbear/neomake-platformio',
    },
}

return M

-- vim: sw=2 sts=2 ts=2 noexpandtab
