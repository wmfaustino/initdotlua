--[[ --------------------------------------------------------------------------
    _    _      
   / \  | | ___ 
  / _ \ | |/ _ \
 / ___ \| |  __/
/_/   \_\_|\___|

==> Methods to setup Ale
-----------------------------------------------------------------------------]]

--[[ --- get all languages and their attributes----------------------------- ]]
local all_langs = require'languages'

--[[ --- create an Ale table to hold the methods ----------------------- ]]
local Ale = {}

-- [[ --- set ale (linting) variables -------------------------------------- ]]
Ale.set_vars = function(lang)
   
    local language = all_langs[lang]

	-- each language table has an ale attribute
    if(language.ale == nil) then return end

        -- ale_var == ale_linters and ale_fixers 
    for ale_var, value in pairs(language.ale) do

         utils.Variables.set({
             { 'buffer', ale_var, { [lang]= language.ale[ale_var] } },
         })
     end
end
-------------------------------------------------------------------------------
return Ale

--[[ Ale.servers = Ale.get_servers(all_langs)

function that receives all languages table and set all ale variables
** not used anymore ** Now I set ale variables calling with a language

Ale.set_all_ale_variables = function(all_langs)
    
    for lang, values in pairs(all_langs) do
       
	    if(values.ale == nil) then goto continue
        else
            Var.set({
                { 'buffer', 'ale_linters', { [lang] = {values.ale.ale_linters} } },
                { 'buffer', 'ale_fixers', { [lang] = {values.ale.ale_fixers} } },
            })
        end
        ::continue::
    end
end
]]
