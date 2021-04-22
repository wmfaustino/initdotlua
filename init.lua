--[[ --------------------------------------------------------------------------
 _       _ _         _       _     _
(_)_ __ (_) |_    __| | ___ | |_  | |_   _  __ _
| | '_ \| | __|  / _` |/ _ \| __| | | | | |/ _` |
| | | | | | |_  | (_| | (_) | |_  | | |_| | (_| |
|_|_| |_|_|\__|  \__,_|\___/ \__| |_|\__,_|\__,_|

==> nvim configuration written in lua
------------------------------------------

AUTHOR : Wilson Morais Faustino
GITHUB : https://github.com/wmfaustino
EMAIL  : open (.) source (at) wmfaustino (.) dev
TWITTER: https://twitter.com/wmfaustino
LICENSE: MIT (who cares, it's just a nvim config file)

-----------------------------------------------------------------------------]]

--[[ --------------------------------------------------------------------------
    PLUGIN MANAGER: https://github.com/paq-nvim
]] ----------------------------------------------------------------------------

-- Load paq-nvim --------------------------------------------------------------
vim.cmd 'packadd paq-nvim'

-- Import module and bind `paq` function --------------------------------------
local paq = require'paq-nvim'.paq

-- Let Paq manage itself ------------------------------------------------------
paq{ 'savq/paq-nvim', opt = true }

-- Add your packages ----------------------------------------------------------

--[[ --- lsp --------------------------------------------------------------- ]]
paq 'neovim/nvim-lspconfig'

--[[ --- completion -------------------------------------------------------- ]]
paq 'nvim-lua/completion-nvim'
paq 'Shougo/neosnippet.vim'
paq 'Shougo/neosnippet-snippets'
-- paq 'nvim-lua/lsp_extensions.nvim'

--[[ --- treesitter -------------------------------------------------------- ]]
paq 'nvim-treesitter/nvim-treesitter'
--, hook=vim.cmd[':TSUpdate'] } -- We recommend updating the parsers on update
-- Ps: nvim-treesitter config file updates parsers

--[[ --- telescope --------------------------------------------------------- ]]
paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim'

--[[ --- linting ----------------------------------------------------------- ]]
paq 'dense-analysis/ale'

--[[ --- react ----------------------------------------------------------- ]]
paq 'mxw/vim-jsx'
paq 'pangloss/vim-javascript'

--[[ --- lightline --------------------------------------------------------- ]]
paq 'itchyny/lightline.vim'
-- paq 'maximbaz/lightline-ale'

--[[ --- color schemes ----------------------------------------------------- ]]
paq 'dikiaap/minimalist'
-- paq 'tjdevries/colorbuddy.vim'
-- paq 'tjdevries/gruvbuddy.nvim'

--[[ --- file tree --------------------------------------------------------- ]]
paq 'kyazdani42/nvim-web-devicons' -- for file icons
paq 'kyazdani42/nvim-tree.lua'

--[[ --- history ----------------------------------------------------------- ]]
paq 'mbbill/undotree'

--[[ ---  ------------------------------------------------------------------ ]]
paq 'tpope/vim-surround'
paq 'jiangmiao/auto-pairs'
paq 'tpope/vim-commentary'
paq 'Yggdroot/indentLine'    -- Show the visual mark on indendation blocks ┆
-- paq 'mg979/vim-visual-multi', {'branch': 'master'}

--[[ ---  ------------------------------------------------------------------ ]]
paq 'norcalli/nvim-colorizer.lua'

--[[ ---  ------------------------------------------------------------------ ]]
paq 'tpope/vim-repeat'
paq 'tweekmonster/startuptime.vim'

-------------------------------------------------------------------------------

require 'init'
