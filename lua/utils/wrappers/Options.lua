--[[ --------------------------------------------------------------------------
  ___        _   _                 
 / _ \ _ __ | |_(_) ___  _ __  ___ 
| | | | '_ \| __| |/ _ \| '_ \/ __|
| |_| | |_) | |_| | (_) | | | \__ \
 \___/| .__/ \__|_|\___/|_| |_|___/
      |_|                          

==> Methods to deal with settings
-----------------------------------------------------------------------------]]
local Option = {}

--[[ --- define scopes ----------------------------------------------------- ]]
Option.scopes = {
    global = vim.o,
    buffer = vim.bo,
    window = vim.wo
}

--[[ --- set method -------------------------------------------------------- ]]
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
