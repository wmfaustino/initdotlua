--[[ --------------------------------------------------------------------------
       _   _ _     
 _   _| |_(_) |___ 
| | | | __| | / __|
| |_| | |_| | \__ \
 \__,_|\__|_|_|___/
-----------------------------------------------------------------------------]]

local Helpers    = require('utils.wrappers.Helpers')
local Options    = require('utils.wrappers.Options')
local Keymaps    = require('utils.wrappers.Keymaps')
local Variables  = require('utils.wrappers.Variables')
-- local Languages  = require('utils.wrappers.Languages')
local Ale        = require('utils.wrappers.Ale')

local Lsp        = require('utils.wrappers.Lsp')
local Filetype   = require('utils.wrappers.Filetype')
local Treesitter = require('utils.wrappers.Treesitter')

local utils = {
	['Helpers'     ] = Helpers,
	['Options'     ] = Options,
	['Keymaps'     ] = Keymaps,
	['Variables'   ] = Variables,
	-- ['Languages'   ] = Languages,
    [ 'Lsp'        ] = Lsp,
    [ 'Treesitter' ] = Treesitter,
    [ 'Ale'        ] = Ale,
    [ 'Filetype'   ] = Filetype,
}

return utils
