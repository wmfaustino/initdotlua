--[[ --------------------------------------------------------------------------
 ___           _        _ _ 
|_ _|_ __  ___| |_ __ _| | |
 | || '_ \/ __| __/ _` | | |
 | || | | \__ \ || (_| | | |
|___|_| |_|___/\__\__,_|_|_|

==> Methods to 
-----------------------------------------------------------------------------]]

--[[ --- get all languages and their attributes----------------------------- ]]
local all_langs = require'languages'

--[[ --- get all treesitter languages -------------------------------------- ]]
local get_treesitter       = require'Languages.get_treesitter'
local treesitter_languages = get_treesitter(all_langs)

local Install = {}

--[[ --- set method -------------------------------------------------------- ]]

vim.api.nvim_command()

Install.treesitter = function(){

}

Option.set = function(options_table)

    for _, setting in pairs(options_table) do
        
        -- test whether setting comes as a table
        utils.Helpers.is_table(setting)

        scope = setting[1]
        option =setting[2] 
        value = setting[3]

       Option.scopes[scope][option] = value
    end 
end

-------------------------------------------------------------------------------
return Option

