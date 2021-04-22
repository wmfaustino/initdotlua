--[[ --------------------------------------------------------------------------
 _ _       _     _   _ _            
| (_) __ _| |__ | |_| (_)_ __   ___ 
| | |/ _` | '_ \| __| | | '_ \ / _ \
| | | (_| | | | | |_| | | | | |  __/
|_|_|\__, |_| |_|\__|_|_|_| |_|\___|
     |___/                          

==> lightline config
==> https://github.com/itchyny/lightline.vim
-----------------------------------------------------------------------------]]


--[[ --- lightline settings ------------------------------------------------ ]]
utils.Options.set({
    -- INSERT -- is unnecessary anymore because the mode information is displayed in the statusline.
    -- to get rid of it
    { 'global', 'showmode', false, {} }
})

--[[ --- lightline variables ----------------------------------------------- ]]
utils.Variables.set({

    { 'global', 'lightline', { ['colorscheme'] = 'material' }  },
})
