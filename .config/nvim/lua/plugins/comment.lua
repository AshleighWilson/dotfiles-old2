-- https://github.com/numToStr/Comment.nvim
packer.use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

