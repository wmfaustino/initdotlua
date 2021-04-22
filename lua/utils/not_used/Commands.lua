
--[[
M.commands = {
  TSInstall = {
    run = install(false, true),
    args = {
      "-nargs=+",
      "-complete=custom,nvim_treesitter#installable_parsers",
    },
  },

local api = vim.api
local fn = vim.fn
local luv = vim.loop

local M = {}

function M.setup_commands(mod, commands)
  for command_name, def in pairs(commands) do
    local call_fn = string.format("lua require'nvim-treesitter.%s'.commands.%s.run(<f-args>)", mod, command_name)
    local parts = vim.tbl_flatten({
        "command!",
        def.args,
        command_name,
        call_fn,
      })
    api.nvim_command(table.concat(parts, " "))
  end
end

]]


local Commands = {}

Commands['nvim_create_augroups'] = function (definitions)

	for group_name, definition in pairs(definitions) do

        api.nvim_command('augroup '..group_name)
		api.nvim_command('autocmd!')
		
        for _, def in ipairs(definition) do
			-- if type(def) == 'table' and type(def[#def]) == 'function' then
			-- 	def[#def] = lua_callback(def[#def])
			-- end
			local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
			api.nvim_command(command)
		end
		api.nvim_command('augroup END')
	end
end
-- au BufNewFile,BufRead *.js, *.html, *.css
--     \ set tabstop=2
--     \ set softtabstop=2
--     \ set shiftwidth=2

-- vim.api.nvim_command([[
-- augroup AutoCompileLatex
-- autocmd BufEnter *.tex :set wrap linebreak nolist spell
-- autocmd BufWritePost *.tex :silent !bibtex %:t:r > /dev/null
-- autocmd BufWritePost *.tex :silent !compiler % > /dev/null
-- augroup END 
-- ]])

-- " -----------------------------------------------------------------------------
