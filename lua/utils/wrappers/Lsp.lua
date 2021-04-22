--[[ --------------------------------------------------------------------------
 _               
| |    ___ _ __  
| |   / __| '_ \ 
| |___\__ \ |_) |
|_____|___/ .__/ 
          |_|

==> Methods to setup the lsp
-----------------------------------------------------------------------------]]

--[[ --- get all languages and their attributes----------------------------- ]]
local all_langs = require'languages'

--[[ --- create a Lsp table to hold the methods ---------------------------- ]]
local Lsp = {}

--[[ --- get all language servers ------------------------------------------ ]]
Lsp.get_servers = function(all_langs)
    
    local servers = {}
    
    for _, attr in pairs(all_langs) do

	-- each language table has a lsp attribute
        if(attr.lsp ~= nil) then
            table.insert(servers, attr.lsp['server'][1])
        end

    end
    return servers
end

--[[ --- lsp on_attach method -------------------------------------------------
         used by nvim-lspconfig and completion-nvim ------------------------ ]]
Lsp.on_attach = function(on_attach)

    for _, lsp in ipairs(Lsp.get_servers(all_langs)) do
      require('lspconfig')[lsp].setup { on_attach = on_attach }
    end

end

return Lsp

--[[ Lsp.servers = Lsp.get_servers(all_langs) ]]
