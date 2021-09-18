-- plugins - Doom nvim custom plugins
--
-- This file contains all the custom plugins that are not in Doom nvim but that
-- the user requires. All the available fields can be found here
-- https://github.com/wbthomason/packer.nvim#specifying-plugins
--
-- By example, for including a plugin with a dependency on telescope:
-- return {
--     {
--         'user/repository',
--         requires = { 'nvim-lua/telescope.nvim' },
--     },
-- }

return {
    {
        'stevearc/vim-arduino',
        config = [[ vim.g.arduino_use_slime = 1 ]],
    },
    {
        'jpalardy/vim-slime',
        config = function()
            vim.g.slime_target = "tmux"
            vim.g.slime_paste_file = "$HOME/.config/slime/slime_paste"
        end,
    },
}
