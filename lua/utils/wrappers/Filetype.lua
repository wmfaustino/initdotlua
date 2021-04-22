--[[ --------------------------------------------------------------------------
 _____ _ _      _                    
|  ___(_) | ___| |_ _   _ _ __   ___ 
| |_  | | |/ _ \ __| | | | '_ \ / _ \
|  _| | | |  __/ |_| |_| | |_) |  __/
|_|   |_|_|\___|\__|\__, | .__/ \___|
                    |___/|_|         

==> Methods to setup filetype
-----------------------------------------------------------------------------]]

local Filetype = {}

Filetype.config = function(lang)
    -- language especific settings
    utils.Options.set(languages[lang].options)
    -- language especific variables
    utils.Variables.set(languages[lang].variables)
    -- set ale vars
    utils.Ale.set_vars(lang)
end

return Filetype
