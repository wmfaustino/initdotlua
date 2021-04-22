--[[ --------------------------------------------------------------------------
            _                 _                      _ _   _            
 _ ____   _(_)_ __ ___       | |_ _ __ ___  ___  ___(_) |_| |_ ___ _ __ 
| '_ \ \ / / | '_ ` _ \ _____| __| '__/ _ \/ _ \/ __| | __| __/ _ \ '__|
| | | \ V /| | | | | | |_____| |_| | |  __/  __/\__ \ | |_| ||  __/ |   
|_| |_|\_/ |_|_| |_| |_|      \__|_|  \___|\___||___/_|\__|\__\___|_|            _                 _                      

==> nvim-treesitter config
==> https://github.com/nvim-treesitter/nvim-treesitter
-----------------------------------------------------------------------------]]

--[[ --- update all parsers ------------------------------------------------ ]]
require'nvim-treesitter.install'.commands.TSUpdate.run()

--[[ --- modules ----------------------------------------------------------- ]]
require'nvim-treesitter.configs'.setup {
  ensure_installed = parsers, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    --disable = { "c", "rust" },  -- list of language that will be disabled
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  -- indent = {
  --   enable = true
  -- }
}

--[[
Option.set({
    {'window', 'foldmethod', 'expr'},
    {'window', 'foldexpr', 'nvim_treesitter#foldexpr()'}
})
]]
