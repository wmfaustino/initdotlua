--[[ --------------------------------------------------------------------------
 _          _                     
| |__   ___| |_ __   ___ _ __ ___ 
| '_ \ / _ \ | '_ \ / _ \ '__/ __|
| | | |  __/ | |_) |  __/ |  \__ \
|_| |_|\___|_| .__/ \___|_|  |___/
             |_|                  
-----------------------------------------------------------------------------]]
local Helpers = {}

--[[ --- test if given parameter is a table -------------------------------- ]]
Helpers['is_table'] = function (t)
    if type(t) ~= 'table' then
        error('options should be a type of "table"')
        return
    end
end

--[[ --- test if given path is a directory --------------------------------- ]]
-- Helpers['exists_dir'] = function (path)
--        return os.rename(path, path)
--     end

-- local fs = require("filesystem")

-- for file in fs.list("/path") do
--   if not fs.isDirectory(file) then
--     print(file)
--   end
-- end
-------------------------------------------------------------------------------
return Helpers
