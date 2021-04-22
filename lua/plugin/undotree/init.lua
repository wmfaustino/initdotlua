--[[ --------------------------------------------------------------------------
                 _       _                 
 _   _ _ __   __| | ___ | |_ _ __ ___  ___ 
| | | | '_ \ / _` |/ _ \| __| '__/ _ \/ _ \
| |_| | | | | (_| | (_) | |_| | |  __/  __/
 \__,_|_| |_|\__,_|\___/ \__|_|  \___|\___|            _                           _            _              

==> undotree config
==> https://github.com/mbbill/undotree
-----------------------------------------------------------------------------]]

-- local undodir = "~/.local/share/nvim/undo/"

--[[ --- undotree settings ------------------------------------------------- ]]
utils.Options.set({
    -- { 'global', 'undodir', undodir },

    { 'buffer', 'undofile', true } -- Nvim by default stores undo in ~/.local/share/nvim/undo and auto-creates the path (if undofile is enabled).
})

--[[ --- undotree keybindings ---------------------------------------------- ]]
utils.Keymaps.set({
    {'buffer', 0, 'n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true }}
})
