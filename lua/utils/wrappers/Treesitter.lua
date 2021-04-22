--[[ --------------------------------------------------------------------------
 _____                   _ _   _            
|_   _| __ ___  ___  ___(_) |_| |_ ___ _ __ 
  | || '__/ _ \/ _ \/ __| | __| __/ _ \ '__|
  | || | |  __/  __/\__ \ | |_| ||  __/ |   
  |_||_|  \___|\___||___/_|\__|\__\___|_|   

-----------------------------------------------------------------------------]]

--[[ --- get all languages and their attributes----------------------------- ]]
local all_langs = require'languages'

--[[ --- Treesitter table -------------------------------------------------- ]]
local Treesitter = {}

--[[ --- get all treesitter parsers ---------------------------------------- ]]
Treesitter.get_parsers = function(all_langs)
    
    local parsers = {}
    
    for _, attr in pairs(all_langs) do
        
	     -- each language table has a treesitter attribute
        if (attr.treesitter ~= nill and attr.treesitter[1] ~= nil) then
            for _, parser in ipairs(attr.treesitter) do
                table.insert(parsers, parser)
            end
        end
    end
    return parsers
end

Treesitter.install_parsers = function(parsers)

	for _, parser in pairs(parsers) do
		require'nvim-treesitter.install'.commands.TSInstall.run(parser)
	end
end
-------------------------------------------------------------------------------
Treesitter.parsers = Treesitter.get_parsers(all_langs)
-------------------------------------------------------------------------------
-- Treesitter.install_parsers(Treesitter.parsers)

--[[
Treesitter.call_parsers_method = function(method, parsers)
    
    for _, parser in ipairs(parsers) do method(parser) end
end
-------------------------------------------------------------------------------

Treesitter.parser_methods = {
    ['TSInstall'] = require'nvim-treesitter.install'.commands.TSInstall.run,
    ['TSUpdate'] = require'nvim-treesitter.install'.commands.TSUpdate.run
}
]]
-------------------------------------------------------------------------------
return Treesitter
