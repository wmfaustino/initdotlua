--[[ --------------------------------------------------------------------------
__     __         _       _     _           
\ \   / /_ _ _ __(_) __ _| |__ | | ___  ___ 
 \ \ / / _` | '__| |/ _` | '_ \| |/ _ \/ __|
  \ V / (_| | |  | | (_| | |_) | |  __/\__ \
   \_/ \__,_|_|  |_|\__,_|_.__/|_|\___||___/

==> Methods to deal with variables
-----------------------------------------------------------------------------]]
local Variables = {}

--[[ --- define scopes ----------------------------------------------------- ]]
Variables.scopes = {
    global = vim.g,
    window = vim.w,
    buffer = vim.b,
    tabpage = vim.t,
    vim = vim.v,
}

--[[ --- set method -------------------------------------------------------- ]]
Variables.set = function(variables_table)

    for _, variable in pairs(variables_table) do

        -- test whether keybinding comes as a table
        utils.Helpers.is_table(variable)

        local scope = variable[1]
        local name  = variable[2] 
        local value = variable[3]

       Variables.scopes[scope][name] = value
    end 
end

-------------------------------------------------------------------------------
return Variables

-- local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
-- local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
-- local g = vim.g      -- a table to access global variables
