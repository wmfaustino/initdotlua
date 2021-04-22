--[[ --------------------------------------------------------------------------
 _  __                                
| |/ /___ _   _ _ __ ___   __ _ _ __  
| ' // _ \ | | | '_ ` _ \ / _` | '_ \ 
| . \  __/ |_| | | | | | | (_| | |_) |
|_|\_\___|\__, |_| |_| |_|\__,_| .__/ 
          |___/                |_|    

==> Methods to deal with keybindings
-----------------------------------------------------------------------------]]
local Keymap = {}

--[[ --- define scopes ----------------------------------------------------- ]]
Keymap.scopes = {
    global = vim.api.nvim_set_keymap,
    buffer = vim.api.nvim_buf_set_keymap
}

--[[ --- set method -------------------------------------------------------- ]]
Keymap.set = function(keybindings_table)

    for _, keybinding in pairs(keybindings_table) do

        -- test whether keybinding comes as a table
        utils.Helpers.is_table(keybinding)
        
        scope = keybinding[1]

        if scope == 'global' then
            local mode     = keybinding[2]
	        local key_comb = keybinding[3]
	        local command  = keybinding[4]
	        local opts     = keybinding[5]

            Keymap.scopes[scope](mode,key_comb,command,opts)
        else
            local buffer   = keybinding[2]
            local mode     = keybinding[3]
	        local key_comb = keybinding[4]
	        local command  = keybinding[5]
	        local opts     = keybinding[6]

            Keymap.scopes[scope](buffer,mode,key_comb,command,opts)
        end
    end
end

-------------------------------------------------------------------------------
return Keymap
