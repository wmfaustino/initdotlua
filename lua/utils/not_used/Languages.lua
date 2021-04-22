--[[ --------------------------------------------------------------------------
| |    __ _ _ __   __ _ _   _  __ _  __ _  ___  ___ 
| |   / _` | '_ \ / _` | | | |/ _` |/ _` |/ _ \/ __|
| |__| (_| | | | | (_| | |_| | (_| | (_| |  __/\__ \
|_____\__,_|_| |_|\__, |\__,_|\__,_|\__, |\___||___/
                  |___/             |___/           

==> Methods to setup the languages
-----------------------------------------------------------------------------]]

--[[ --- get all languages and their attributes----------------------------- ]]
local all_langs = require'languages'

--[[ --- create a Language table to hold the methods ----------------------- ]]
local Languages = {}

--[[ --- get all language servers ------------------------------------------ ]]
Languages.get_servers = function(all_langs)
    
    local servers = {}
    
    for lang, attr in pairs(all_langs) do

	-- each language table has a lsp attribute
        if(attr.lsp ~= nil) then
            table.insert(servers, attr.lsp['server'][1])
        end

    end
    return servers
end

--[[ --- lsp on_attach method -------------------------------------------------
         used by nvim-lspconfig and completion-nvim ------------------------ ]]
Languages.on_attach = function(on_attach)

    for _, lsp in ipairs(Languages.get_servers(all_langs)) do
      require('lspconfig')[lsp].setup { on_attach = on_attach }
    end

end

-- [[ --- set ale (linting) variables -------------------------------------- ]]
Languages.set_ale = function(lang)
   
    local language = all_langs[lang]

	-- each language table has an ale attribute
    if(language.ale == nil) then return end

    for ale_var, value in pairs(language.ale) do

         table.insert(debug, language.ale[ale_var])
	 
         utils.Variables.set({
             { 'buffer', ale_var, { [lang]= language.ale[ale_var] } },
         })
     end
end
-------------------------------------------------------------------------------

--[[ --- get all treesitter languages -------------------------------------- ]]
Languages.get_treesitter = function(all_langs)
    
    local treesitters = {}
    
    for lang, attr in pairs(all_langs) do
        
	-- each language table has a treesitter attribute
        if (attr.treesitter ~= nill and attr.treesitter[1]) then
         table.insert(treesitters, attr.treesitter[1])
        end

    end
    return treesitters
end

Languages.install_treesitter_langs = function(treesitter_langs)
    
    local TSInstall = require'nvim-treesitter.install'.commands.TSInstall.run 

    for _, lang in ipairs(treesitter_langs) do TSInstall(lang) end
end

Languages.update_treesitter_langs = function(treesitter_langs)
    
    local TSUpdate = require'nvim-treesitter.install'.commands.TSUpdate.run 

    for _, lang in ipairs(treesitter_langs) do TSUpdate(lang) end
end

-- require'nvim-treesitter.install'.commands.TSUpdate.run()
-- Languages.treesitter = Languages.get_treesitter(all_langs)
-- Languages.update_treesitter_langs(Languages.treesitter)
-- Languages.install_treesitter_langs(Languages.treesitter)
-------------------------------------------------------------------------------
-- vim.api.nvim_command('TSInstall json')
-- vim.api.nvim_exec('<cmd>lua require("telescope.builtin").find_files()<cr>', true)
return Languages

--[[ Languages.servers = Languages.get_servers(all_langs)

function that receives all languages table and set all ale variables
** not used anymore ** Now I set ale variables calling with a language

Languages.set_all_ale_variables = function(all_langs)
    
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
