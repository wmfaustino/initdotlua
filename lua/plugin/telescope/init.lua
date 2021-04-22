--[[ --------------------------------------------------------------------------
 _       _                                                 _           
| |_ ___| | ___  ___  ___ ___  _ __   ___       _ ____   _(_)_ __ ___  
| __/ _ \ |/ _ \/ __|/ __/ _ \| '_ \ / _ \_____| '_ \ \ / / | '_ ` _ \ 
| ||  __/ |  __/\__ \ (_| (_) | |_) |  __/_____| | | \ V /| | | | | | |
 \__\___|_|\___||___/\___\___/| .__/ \___|     |_| |_|\_/ |_|_| |_| |_|
                              |_|                                      

==> telescope
==> https://github.com/nvim-telescope/telescope.nvim
-----------------------------------------------------------------------------]]

-- local tb = require('telescope.builtin')

local opts = { noremap = true }
local cmd = {
    
    [ 'find_files'  ] = '<cmd>lua require("telescope.builtin").find_files()<cr>',
    [ 'live_grep'   ] = '<cmd>lua require("telescope.builtin").live_grep()<cr>' ,
    [ 'buffers'     ] = '<cmd>lua require("telescope.builtin").buffers()<cr>'   ,
    [ 'help_tags'   ] = '<cmd>lua require("telescope.builtin").help_tags()<cr>' ,

    [ 'grep_string' ] = '<cmd>lua require("telescope.builtin").grep_string({ search = vim.fn.input("Grep for > ") })<CR>',
}

--[[ --- telescope keybindings --------------------------------------------- ]]
utils.Keymaps.set({
    
    { 'global', 'n', '<leader>ff', cmd.live_grep   , opts },
    { 'global', 'n', '<leader>fg', cmd.buffers     , opts },
    { 'global', 'n', '<leader>fn', cmd.help_tags   , opts },
    { 'global', 'n', '<leader>fh', cmd.grep_string , opts },

    { 'global', 'n', '<leader>ps', cmd.grep_string , opts },
})
